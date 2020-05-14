class CreateBookImages < ActiveRecord::Migration[5.2]
  def change
    create_table :book_images do |t|
      t.text :book_title
      t.string :image_id
      t.text :opinion
      t.integer :user_id

      t.timestamps
    end
  end
end
