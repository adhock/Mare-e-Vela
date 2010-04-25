class CreateCompetitions < ActiveRecord::Migration
  def self.up
    create_table :competitions do |t|
      t.string  :name
      t.timestamps
    end
    Competition.create :name  => 'Departementales'
    Competition.create :name  => 'Internationales'
    Competition.create :name  => 'Regionales'
    Competition.create :name  => 'Club'
  end

  def self.down
    drop_table :competitions
  end
end
