class TravelsController < ApplicationController
  # GET /travels
  # GET /travels.json
  def index
    @travels = Travel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @travels }
    end
  end

  # GET /travels/1
  # GET /travels/1.json
  def show
    @travel = Travel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @travel }
    end
  end

  # GET /travels/new
  # GET /travels/new.json
  def new
    @travel = Travel.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @travel }
    end
  end

  # GET /travels/1/edit
  def edit
    @travel = Travel.find(params[:id])
  end

  # POST /travels
  # POST /travels.json
  def create
    @travel = Travel.new(params[:travel])
	@hotel = Hotel.find(@travel.hotel_id)
	@quota = Quota.new
	@quota.hotel= @hotel
	@quota.travel= @travel
	@quota.aviable_tickets= @travel.number_of_seats_aviables
    respond_to do |format|
      if @travel.save
        @quota.save
        format.html { redirect_to @travel, notice: 'Travel was successfully created.' }
        format.json { render json: @travel, status: :created, location: @travel }
      else
        format.html { render action: "new" }
        format.json { render json: @travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /travels/1
  # PUT /travels/1.json
  def update
    @travel = Travel.find(params[:id])
    if @travel.quota.nil?
      @hotel = Hotel.find(params[:travel][:hotel_id])
      @quota = Quota.new
      @quota.hotel= @hotel
      @quota.travel= @travel
      @quota.aviable_tickets= @travel.number_of_seats_aviables
      @quota.save
    else
      @quota = @travel.quota
      h = @quota.hotel
      if h.nil?
        @hotel = Hotel.find(@travel.hotel_id)
        @quota.hotel= @hotel
        @quota.save
      end
    end

    respond_to do |format|
      if @travel.update_attributes(params[:travel])
        format.html { redirect_to @travel, notice: 'Travel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travels/1
  # DELETE /travels/1.json
  def destroy
    @travel = Travel.find(params[:id])
    @travel.destroy

    respond_to do |format|
      format.html { redirect_to travels_url }
      format.json { head :no_content }
    end
  end
  
  #DELETE /travels/compra/1
  #DELETE /travels/compra/1.json
  def compra
    @travel = Travel.find(params[:id])

    respond_to do |format|
      format.html # compra.html.erb
      format.json { render json: @travel }
    end
  end
  
  def comprado
    @travel = Travel.find(params[:id])
    amount = params[:tickets_amount].to_i
    @travel.minus amount
    quota = @travel.quota
    quota.minus amount
    quota.save
    
    @ticket = Ticket.new
    @ticket.amount_paid= @travel.price * amount
    @ticket.bought_on = Time.new
    @ticket.reservar
    @ticket.times= amount
    @ticket.quota= quota
    @ticket.user= current_user if user_signed_in?
    @ticket.save
    @travel.save
    
    respond_to do |format|
      format.html # comprado.html.erb
      format.json { render json: @travel }
    end
  end
end
