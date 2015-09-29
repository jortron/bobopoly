class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :handle
      t.text :avatar_url
      t.integer :age

      t.timestamps null: false
    end
  end
end