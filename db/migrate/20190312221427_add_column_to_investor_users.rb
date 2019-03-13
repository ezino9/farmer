class AddColumnToInvestorUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :investor_users, :first_name, :string
    add_column :investor_users, :last_name, :string
    add_column :investor_users, :role, :string
    add_column :investor_users, :telephone, :string
  end
end
