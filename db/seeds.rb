# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Album.destroy_all

album_list = [
  ["36 Chambers", "rap"],
  ["Blonde", "smooth rap"],
  ["Dark Thoughts", "Garage Rock"],
  ["Fate", "Indie Rock"],
  ["Fried Chicken and Evil Women", "Honky Tonk"],
  ["Beethoven Classics", "Classical"],
  ["Mariah Carey: Christmas", "Soft Rock, Holiday"]
]

album_list.each do |album, genre|
  Album.create( name: album, genre: genre )
end

50.times do |index|
  albums = []
  albums.push(Album.create!(name: Faker::Music.album,
    genre: Faker::Music.genre))
    albums
    rand(1..15).times do |song|
      albums.each do |album|
        Song.create!(:name => Faker::Music.instrument,
          :album_id => album.id)
        end
      end
    end

    p "Created #{Album.count} albums"
