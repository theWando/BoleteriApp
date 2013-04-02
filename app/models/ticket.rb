class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :quota
  attr_accessible :amount_paid, :bought_on, :paid_with, :status
  
  def reservar
    self.status = "reservado"
  end
end
