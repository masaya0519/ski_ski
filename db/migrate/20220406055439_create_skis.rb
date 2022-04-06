class CreateSkis < ActiveRecord::Migration[6.1]
  def change
    create_table :skis do |t|
      t.integer :genre_id, null: false
      t.string :ski_name, null: false
      t.text :explanation, null: false
      t.integer :cover, null: false
      t.integer :quality, null: false
      t.integer :running_distance, null: false
      t.integer :elevation, null: false

      t.timestamps
    end
  end
end
