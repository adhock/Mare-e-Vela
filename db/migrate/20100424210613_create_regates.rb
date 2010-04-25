class CreateRegates < ActiveRecord::Migration
  def self.up
    create_table :regates do |t|
      t.string  :name
      t.string  :location
      t.references  :club
      t.references  :competition
      t.date  :start
      t.date  :end
      t.timestamps
    end
  end

  def self.down
    drop_table :regates
  end
end
