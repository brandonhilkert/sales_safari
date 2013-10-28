class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.string :name

      t.timestamps
    end
    add_index :trackers, :name, unique: true
  end
end
