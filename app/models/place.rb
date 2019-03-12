class Place < ApplicationRecord
    validates :name, presence: true
	validates :description, presence: true
	validates :address_id, presence: true

    validates :field, inclusion: { in: [ true, false ] } 
end
