require 'digest/sha1'
class AddUsers < ActiveRecord::Migration
  def self.up
    User.create :firstname => 'enric',
        :lastname => 'Joffrion-Antonetti',
        :login => 'adhock',
        :password => "boat_4all!",
        :email => 'enric.joffrion@gmail.com',
        :state_id => State.find_by_name('active').id,
        :role_id => Role.find_by_name('administrateur').id
  end

  def self.down
    u = User.find_by_login('adhock')
    u.delete
  end
end
