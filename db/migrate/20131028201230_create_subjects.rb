class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :tracker_id
      t.integer :votes

      t.timestamps
    end
    add_index :subjects, :tracker_id
  end
end
