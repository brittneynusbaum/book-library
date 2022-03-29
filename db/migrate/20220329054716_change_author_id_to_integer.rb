class ChangeAuthorIdToInteger < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :author_id, :string
    add_column :books, :author_id, :integer
  end
end
