class CreateClubs < ActiveRecord::Migration
  def self.up
    create_table :clubs do |t|
      t.string  :name
      t.string  :location
      t.string  :website
      t.timestamps
    end
    Club.create :name => 'Mare e Vela',
                :location => 'Port Toga'
    Club.create :name => 'Club Nautique Bastiais',
                :location => 'Bastia'
  end

  def self.down
    drop_table :clubs
  end
end
