class User < ApplicationRecord
  has_many :admin_accomodations, foreign_key: 'admin_id', class_name: "Accomodation"
  has_many :guest_reservations, foreign_key: 'guest_id', class_name: 'Reservation'
  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
  validates :phone_number,
    presence: true,
    format: { with: /\A(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})\z/, message: "please enter a valid french number" }
  validates :name, 
    presence: true, 
  length: { minimum: 2 }
  validates :description,   
    length: { maximum: 500 }

  end
