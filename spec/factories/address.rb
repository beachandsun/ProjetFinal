FactoryBot.define do
  factory :address do
    address_number { Faker::Number.non_zero_digit }
    address_main { Faker::Address.street_name }
    city { "Montpellier" }
    country { "France" }
    postal_code { "34000" }
  end
end

