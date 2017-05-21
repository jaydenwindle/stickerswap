class Sticker < ApplicationRecord
  belongs_to :user
  has_many :swap_requests
end
