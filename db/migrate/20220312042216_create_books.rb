class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :rating_out_of_five
      t.string :summary
      t.string :book_image

      t.timestamps
    end
  end
end
