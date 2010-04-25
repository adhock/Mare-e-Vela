class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.string  :name
      t.timestamps
    end
    State.create :name => 'initial'
    State.create :name => 'active'
    State.create :name => 'desactive'
    State.create :name => 'bloque'
  end

  def self.down
    drop_table :states
  end
end
