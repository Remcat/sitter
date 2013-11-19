class RenameRememberToke < ActiveRecord::Migration
  def change
  	rename_column :users, :remember_toke, :remember_token
  end
end
