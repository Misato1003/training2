class RemoveCookIdFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :cook_id, :string
  end
end
