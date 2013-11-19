json.array!(@users) do |user|
  json.extract! user, :title, :first_name, :last_name, :email, :pasword_digest, :remember_toke, :admin
  json.url user_url(user, format: :json)
end
