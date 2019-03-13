class AddColumnToKcfarmerMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :kcfarmer_members, :first_name, :string
    add_column :kcfarmer_members, :last_name, :string
    add_column :kcfarmer_members, :role, :string
    add_column :kcfarmer_members, :telephone, :string
  end
end
