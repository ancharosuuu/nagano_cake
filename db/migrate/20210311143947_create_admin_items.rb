class CreateAdminItems < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_items do |t|
      t.integer :genre_id
      t.string :name
      t.string :image
      t.text :introduction
      t.integer :price
      t.boolean :is_active
     

      t.timestamps
    end
  end
end
