class AddsVerifiedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :verified, :boolean, default: false
  end
end
