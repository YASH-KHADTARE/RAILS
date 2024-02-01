class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.references :book, foreign_key: true
      t.references :member, foreign_key: true
      t.date :issue_date
      t.date :due_date
      t.date :return_date

      t.timestamps
    end
  end
end