class AddAccAddressToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :acc_address, :text
  end
end
