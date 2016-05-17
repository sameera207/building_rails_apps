class AddAdminColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :datetime, default: nil
  end
end
