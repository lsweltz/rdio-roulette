class User < ActiveRecord::Base
  
  def self.find_or_create_from_auth_hash(auth_hash)
    user = User.create(
    nickname: auth_hash["info"]["nickname"],
    uid: auth_hash["uid"], 
    token: auth_hash["credentials"]["token"], 
    secret: auth_hash["credentials"]["secret"])
  end  
  
  
    attr_accessible :nickname, :secret, :token, :uid
    has_many :playlists
  end
  