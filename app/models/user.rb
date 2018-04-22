class User < ApplicationRecord
    attr_accessor :name
    attr_accessor :image
    has_many :shelves, dependent: :destroy
    has_many :books, through: :shelves
end
