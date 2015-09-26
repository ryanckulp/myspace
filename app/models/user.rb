class User < ActiveRecord::Base

def self.sign_in_from_omniauth(auth)
  find_by(provider: auth['provider'], uid: auth['uid']) || create_user_from_omniauth(auth)
end

def self.create_user_from_omniauth(auth)
    binding.pry
  create(
    provider: auth['provider'],
    uid: auth['uid'],
    name: auth['info']['name'],
    first_name: auth["extra"]["raw_info"]["first_name"],
    last_name: auth["extra"]["raw_info"]["last_name"],
    fb_url: auth["info"]["urls"]["Facebook"],
    bio: auth["extra"]["raw_info"]["bio"],
    birthday: auth["extra"]["raw_info"]["birthday"],
    email: auth['extra']['raw_info']['email'],
    fb_friends: auth['extra']['raw_info']['friends']['summary']['total_count'],
    music: auth["extra"]["raw_info"]["music"]["data"].first["name"]
    )
end

end
