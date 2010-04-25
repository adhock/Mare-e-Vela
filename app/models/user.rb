require 'digest/sha1'
class User < ActiveRecord::Base
  belongs_to :state
  belongs_to :role

  def name
    firstname.capitalize + ' ' + lastname.upcase
  end

  def self.authenticate(login,password)
    user = User.find_by_login(login)
    if user
      expected_password = User.encrypted_password(password,user.salt)
      if user.hashed_password != expected_password
        user = nil
      end
    end
    user
  end

  def password
    @password 
  end

  def password=(pwd)
    @password = pwd
    create_new_salt
    self.hashed_password = User.encrypted_password(self.password, self.salt)
  end

  private

  def self.encrypted_password(password,salt)
    Digest::SHA1.hexdigest(password+salt)
  end

  def create_new_salt
    self.salt = (0...13).map{65.+(rand(25)).chr}.join
  end

end
