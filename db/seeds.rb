# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Test Users
bob = User.create!(name: "Bob", 
                   email: "bob@domain.ca", 
                   password_digest: BCrypt::Password.create("bob_is_the_best"), 
                   address: "123 anywhere st.")
joe = User.create!(name: "Joe", 
                   email: "joe@domain.ca", 
                   password_digest: BCrypt::Password.create("joe_is_the_best"), 
                   address: "321 anywhere st.")
tim = User.create!(name: "Tim", 
                   email: "tim@domain.ca", 
                   password_digest: BCrypt::Password.create("tim_is_the_best"), 
                   address: "567 somewhere st.")

# Test Stickers
bob.stickers.create!(name: "Magnet Forensics Glow-in-the-dark", description: "An awesome sticker", quantity: 2)
joe.stickers.create!(name: "Apple sticker", description: "Comes with every ipod purchase", quantity: 1)
tim.stickers.create!(name: "Mozilla new logo", description: "The times they are a-changin'", quantity: 5)

# Test swaps
swap = SwapRequest.create!(requester: bob, requestee: joe, requester_sticker: bob.stickers.first(), requestee_sticker: joe.stickers.first())
