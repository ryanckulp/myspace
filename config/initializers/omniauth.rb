Rails.application.config.middleware.use OmniAuth::Builder do 
  provider :facebook, ENV['FB_APP'], ENV['FB_SECRET'], 
  :info_fields => 'name, email, friends, relationship_status, id, about, bio, birthday, first_name, last_name, link, website, albums, interested_in, religion, movies, photos, hometown, books, games, music, television, family, sports', 
  :scope => 'public_profile, email, user_friends, user_location, user_likes, user_birthday, user_about_me'
end