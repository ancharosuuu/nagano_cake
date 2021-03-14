class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :name
    def change
      add_column :items, :genre, :name
    end
      t.timestamps
    end
  end
end
