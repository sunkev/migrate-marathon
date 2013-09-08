# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

list_of_books = [
  {
    title: "The Orphan Master's Son: A Novel",
    author: "Adam Johnson",
    rating: '4',
  },
  {
    title: 'The Round House',
    author: "Louise Erdrich",
    rating: '4.5',
  },
  {
    title: 'Behind the Beautiful Forevers: Life, death, and hope in a Mumbai undercity',
    author: 'Katherine Boo',
    rating: '4',
  }
]

list_of_books.each do |attributes|
  book = Book.where({
    title: attributes[:title],
    author: attributes[:author],
    rating: attributes[:rating]
    }).first

  if book.nil?
    book = Book.new(attributes)
  else
    book.attributes = attributes
  end

  book.save!
end