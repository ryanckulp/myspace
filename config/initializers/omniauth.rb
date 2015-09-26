Rails.application.config.middleware.use OmniAuth::Builder do 
  provider :facebook, ENV['FB_APP'], ENV['FB_SECRET'], 
  :info_fields => 'name, email, friends, relationship_status, id, about, bio, likes, interested_in, picture, photos, birthday, first_name, last_name, location, movies, hometown, books, games, music, television, family, link, website, albums, religion', 
  :scope => 'public_profile, email, user_friends, user_location, user_likes, user_birthday, user_about_me'
end