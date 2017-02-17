class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :score
      t.integer :dish_id

      t.timestamps
    end
  end
end
