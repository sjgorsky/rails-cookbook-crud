# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CookbookCollection.create(title: 'The French Laundry', author: 'Thomas Keller', cuisine: 'American', year: 2000)
CookbookCollection.create(title: 'Jerusalem', author: 'Yotam Ottolenghi', cuisine: 'Israeli', year: 2012)
CookbookCollection.create(title: 'On Food and Cooking', author: 'Harold McGee', cuisine: 'General', year: 1984)
CookbookCollection.create(title: 'The Food Lab', author: 'J. Kenji Lopez-Alt', cuisine: 'General', year: 2015)
