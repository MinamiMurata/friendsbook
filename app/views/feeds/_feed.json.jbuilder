json.extract! feed, :id, :picture, :content, :created_at, :updated_at
json.url feed_url(feed, format: :json)
