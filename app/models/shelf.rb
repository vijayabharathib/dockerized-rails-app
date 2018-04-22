class Shelf < ApplicationRecord
  enum place: [:wishlist, :bought, :reading, :done]
  belongs_to :user
  belongs_to :book
  validates :user_id, uniqueness: {scope: :book_id}  
  scope :by_user, ->(user) { where(user_id: user)}
end
