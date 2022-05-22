class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :impressions
      t.integer :cook_id

      t.timestamps
    end
  end
end
