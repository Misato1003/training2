class AddTargetCookToCooks < ActiveRecord::Migration[6.1]
  def change
    add_column :cooks, :target_cook, :string
  end
end
