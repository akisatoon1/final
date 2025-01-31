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
    { name: "大谷翔平", image_url: "https://images.app.goo.gl/SYh7HjcKkeGJoDq67", known_cnt: 11, unknown_cnt: 0 },
    { name: "広瀬すず", image_url: "https://images.app.goo.gl/VaKWBkvs2XuqZphr6", known_cnt: 8, unknown_cnt: 5 },
    { name: "まつもとゆきひろ", image_url: "https://images.app.goo.gl/fjoAd5ysoMfQQG1p8", known_cnt: 2, unknown_cnt: 5 }
])
