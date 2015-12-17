json.array!(@creators) do |creator|
  json.extract! creator, :id, :username, :email, :password, :password_confirmation
  json.url creator_url(creator, format: :json)
end
