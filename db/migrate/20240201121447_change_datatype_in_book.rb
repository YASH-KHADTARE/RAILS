class ChangeDatatypeInBook < ActiveRecord::Migration[7.1]
  def change
    change_column :books , :ISBN, :bigint
  end
end
