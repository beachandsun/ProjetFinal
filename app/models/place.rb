class Place < ApplicationRecord
    validates :name, presence: true
	validates :description, presence: true
	validates :address_id, presence: true

  validates :vibe, inclusion: { in: %w(hip_hop classic exotique lounge electronique pop) } 
end
