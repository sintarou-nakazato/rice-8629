class CreateBreakfasts < ActiveRecord::Migration[6.0]
  def change
    create_table :breakfasts do |t|
      t.string :cooking_name,         null: false
      t.text   :menu,                 null: false
      t.string :name,                 null: false
      t.references :user,          foreign_key: true
      t.timestamps
    end
  end
end
