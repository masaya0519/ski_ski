class CreateSkis < ActiveRecord::Migration[6.1]
  def change
    create_table :skis do |t|

      t.timestamps
    end
  end
end
