class CreateCooks < ActiveRecord::Migration[6.1]
  def change
    create_table :cooks do |t|
      t.string :name
      t.string :time
      t.string :point
      t.string :target_people
      t.string :image
      t.string :ingredient
      t.string :recipe

      t.timestamps
    end
  end
end
