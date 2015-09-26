class User < ActiveRecord::Base

def self.sign_in_from_omniauth(auth)
  find_by(provider: auth['provider'], uid: auth['uid']) || create_user_from_omniauth(auth)
end

def self.create_user_from_omniauth(auth)
  # binding.pry
  create(
    provider: auth['provider'],
    uid: auth['uid'],
    name: auth['info']['name'],
    email: auth['extra']['raw_info']['email'],
    fb_friends: auth['extra']['raw_info']['friends']['summary']['total_count']
    )
end

end
