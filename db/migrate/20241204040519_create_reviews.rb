class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :region
      t.text :review
      t.string :image

      t.timestamps
    end
  end
end
