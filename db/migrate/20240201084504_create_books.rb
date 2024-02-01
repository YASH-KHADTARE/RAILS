class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.integer :ISBN
      t.string :title
      t.string :author
      t.string :genere
      t.integer :publish_year

      t.timestamps
    end
  end
end
