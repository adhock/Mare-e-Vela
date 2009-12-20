class CreateMarines < ActiveRecord::Migration
  def self.up
    create_table :marines do |t|
	t.string :name
	t.text :address
	t.string :tel
	t.string :port
	t.timestamps
    end
  end

  def self.down
    drop_table :marines
  end
end
