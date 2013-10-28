class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.string :name, null: false
      t.string :uniq_id, null: false

      t.timestamps
    end

    add_index :trackers, :name, unique: true
    add_index :trackers, :uniq_id, unique: true
  end
end
