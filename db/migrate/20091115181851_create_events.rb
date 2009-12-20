class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
	t.column :title,	:string
	t.column :description,	:text
	t.column :date,		:date
	t.column :site,		:string
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
