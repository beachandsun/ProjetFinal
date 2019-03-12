FactoryBot.define do
  factory :address do
    address_number { Faker::Number.non_zero_digit }
    address_main { Faker::Address.street_name }
    city { Faker::Address.city }
    postal_code {Faker::Address.postcode}
    country {Faker::Address.country}
  end
end

