class Reservation < ApplicationRecord
  belongs_to :guest, class_name: "User"
  belongs_to :accomodation

  validates :start_date,
    presence: true
  validates :end_date,
    presence: true
  validate :start_must_be_before_end_date
  #validate :duration
  #validate :full_price

  def start_must_be_before_end_date
    errors.add(:start_date, "must be before end date") unless
       start_date < end_date
  end

  def duration
    return (end_date - start_date).day
  end

  def full_price
    return duration * accomodation.price
  end

end
