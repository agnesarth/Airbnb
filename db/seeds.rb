require 'faker'

10.times do
  city = City.create(
    name: Faker::Nation.capital_city,
    zip_code: Faker::Address.zip_code
  )
end

20.times do
  user = User.create(
    name: Faker::Movies::HarryPotter.character, 
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    description: Faker::Hipster.sentence
    )
end

20.times do
  accomodation = Accomodation.create(
    available_beds: rand(1..6),
    price: rand(5..200),
    has_wifi: Faker::Boolean.boolean,
    description: Faker::Hipster.sentence,
    welcome_message: "Bienvenue bogoss"
  )
end

#50.times do 
#  reservation = Reservation.create(
#    start_date:
#    end_date:
#  )
#end

