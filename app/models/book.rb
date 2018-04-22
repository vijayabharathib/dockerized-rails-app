class Book < ApplicationRecord
  has_many :shelves, dependent: :destroy
  has_many :users, through: :shelves
  scope :within_shelf, ->(place,user) {
    joins(:shelves,:users) 
    .where(shelves: {place: place, users: {id: user.id}})
  }
end
