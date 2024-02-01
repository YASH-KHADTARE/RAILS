class AddGenderToMember < ActiveRecord::Migration[7.1]
  def change
    add_column :members, :gender ,:string
  end
end
