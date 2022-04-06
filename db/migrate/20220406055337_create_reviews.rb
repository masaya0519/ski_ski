class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :member_id, null: false
      t.integer :ski_id, null: false
      t.integer :target_id
      t.string :review, null: false

      t.timestamps
    end
  end
end
