json.extract! post, :id, :user_id, :body, :data, :created_at, :updated_at
json.url post_url(post, format: :json)
