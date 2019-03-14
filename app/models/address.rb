class Address < ApplicationRecord
    has_one :user
    has_one :place
    # validates :address_number, presence: true
	# validates :address_main, presence: true
	# validates :city, presence: true
	# validates :postal_code, presence: true
	# validates :country, presence: true

    # validates :postal_code, :length => { :minimum => 5, :maximum => 5 }, :format => { with: /[0-9]+/ }
    # validates :country, :format => { with: /\A[a-zA-Z]+\z/ }
    # validates :city, :format => { with: /\A[a-zA-Z]+\z/ }
    # validates :address_number, :format => { with: /\A[0-9]+\z/ }
end
