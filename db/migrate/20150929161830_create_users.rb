class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, index: true, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      
      t.integer :user_age, index: true

      t.timestamps null: false
    end
  end
end
