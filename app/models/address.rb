class Address < ApplicationRecord

    has_one :user
    has_one :place

end
