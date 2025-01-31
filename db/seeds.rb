# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 有名人データを作成する
Celebrity.create([
    { name: "大谷翔平", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Dodgers_at_Nationals_%2853677192000%29_%28cropped%29.jpg/466px-Dodgers_at_Nationals_%2853677192000%29_%28cropped%29.jpg", known_cnt: 11, unknown_cnt: 0 },
    { name: "広瀬すず", image_url: "https://upload.wikimedia.org/wikipedia/commons/3/31/Suzu_Hirose_on_Our_Little_Sister_at_the_Cannes_film_festival_2015_12_%28cropped%29.jpg", known_cnt: 8, unknown_cnt: 5 },
    { name: "まつもとゆきひろ", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Yukihiro_Matsumoto.JPG/220px-Yukihiro_Matsumoto.JPG", known_cnt: 2, unknown_cnt: 5 }
])
