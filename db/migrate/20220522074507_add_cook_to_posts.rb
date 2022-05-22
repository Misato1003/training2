class AddCookToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :cook, foreign_key: true
  end
end
