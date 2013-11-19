class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :pasword_digest
      t.string :remember_toke
      t.boolean :admin

      t.timestamps
    end
  end
end
