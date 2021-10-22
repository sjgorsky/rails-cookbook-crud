class CreateCookbookCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :cookbook_collections do |t|
      t.string :title, null: false 
      t.string :author
      t.string :cuisine
      t.integer :year

      t.timestamps
    end
  end
end
