# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

user1 = User.create!(username: "PeterPiper")
user2 = User.create!(username: "SallySassyPants")
user3 = User.create!(username: "YouDontKnowMe")
user4 = User.create!(username: "CatMeme")

artwork1 = Artwork.create!(title: "Ginger", image_url: "artwork.com/art1", artist_id: user1.id)
artwork2 = Artwork.create!(title: "Maryanne", image_url: "artwork.com/art2", artist_id: user1.id)
artwork3 = Artwork.create!(title: "Gilligan", image_url: "artwork.com/art3", artist_id: user2.id)
artwork4 = Artwork.create!(title: "Professor", image_url: "artwork.com/art4", artist_id: user2.id)
artwork5 = Artwork.create!(title: "Old Rich People", image_url: "artwork.com/art5", artist_id: user3.id)
artwork6 = Artwork.create!(title: "Mayble", image_url: "artwork.com/art6", artist_id: user3.id)
artwork7 = Artwork.create!(title: "Ruth", image_url: "artwork.com/art7", artist_id: user4.id)
artwork8 = Artwork.create!(title: "A Cat on a beach drinking mai tais", image_url: "artwork.com/art8", artist_id: user4.id)

ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user4.id)
ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user3.id)
ArtworkShare.create!(artwork_id: artwork2.id, viewer_id: user3.id)
ArtworkShare.create!(artwork_id: artwork3.id, viewer_id: user3.id)
ArtworkShare.create!(artwork_id: artwork3.id, viewer_id: user1.id)
ArtworkShare.create!(artwork_id: artwork3.id, viewer_id: user4.id)
ArtworkShare.create!(artwork_id: artwork8.id, viewer_id: user1.id)
ArtworkShare.create!(artwork_id: artwork8.id, viewer_id: user2.id)
ArtworkShare.create!(artwork_id: artwork8.id, viewer_id: user3.id)
ArtworkShare.create!(artwork_id: artwork4.id, viewer_id: user1.id)
ArtworkShare.create!(artwork_id: artwork6.id, viewer_id: user4.id)
ArtworkShare.create!(artwork_id: artwork7.id, viewer_id: user2.id)
