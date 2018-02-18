class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.string :movie
      t.string :user
      t.text :review

      t.timestamps
    end
  end
end
