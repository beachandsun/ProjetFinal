class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
      #for address model
         belongs_to :address
         has_many :likes, dependent: :destroy
         accepts_nested_attributes_for :address

  #after_create :welcome_send       


end
