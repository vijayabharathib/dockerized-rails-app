# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Shelf.delete_all
Book.delete_all
books=Book.create([
    {title: "Oliver Twist", author:'Charles Dickens'}, 
    {title: 'Great Expectations',author:'Charles Dickens'},
    {title: 'A tale of two cities', author:'Charles Dickens'},
    {title: 'Leonardo Da Vinci',author:'Walter Isaacson'},
    {title: 'Einstein: His Life and Universe', author: 'Walter Isaacson'},
    {title: 'Benjamin Franklin',author: 'Walter Isaacson'}
])
