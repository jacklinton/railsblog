json.extract! user, :id, :user_name, :password, :avatar, :quote, :comments, :admin, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
