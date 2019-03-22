class Like < ApplicationRecord
  belongs_to :place
  belongs_to :user
  has_many :likes, dependent: :destroy
end
