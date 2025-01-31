json.extract! celebrity, :id, :name, :image_url, :known_cnt, :unknown_cnt, :created_at, :updated_at
json.url celebrity_url(celebrity, format: :json)
