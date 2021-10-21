class CreateCookbooks < ActiveRecord::Migration[6.1]
  def change
    create_table :cookbooks do |t|
      t.string :title
      t.string :author
      t.string :cuisine
      t.integer :year

      t.timestamps
    end
  end
end
