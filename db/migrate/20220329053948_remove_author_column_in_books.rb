class RemoveAuthorColumnInBooks < ActiveRecord::Migration[7.0]
  def change
    rename_column :books, :author, :author_id
  end
end
