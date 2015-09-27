Rails.application.config.middleware.use OmniAuth::Builder do 
  provider :facebook, ENV['FB_APP'], ENV['FB_SECRET'], 
  :info_fields => 'name, email, friends,relationship_status, link', :scope => 'public_profile, email, user_friends'
end