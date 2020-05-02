class Accomodation < ApplicationRecord
  belongs_to :city
  has_many :reservations
  belongs_to :admin, class_name: "User"

  validates :price,
    presence: true
    numericality: {greater_than: 0, message: "must be greater than 0"}
  validates :available_beds,
    presence: true
  validates :description,
    presence: true
  validates :welcome_message,
    presence: true

  #def overlaping_reservation?(datetime)
    # vérifie dans toutes les réservations du listing s'il y a une réservation qui tombe sur le datetime en entrée
  #end

end
