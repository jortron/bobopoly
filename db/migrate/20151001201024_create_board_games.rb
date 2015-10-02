class CreateBoardGames < ActiveRecord::Migration
  def change
    create_table :board_games do |t|

      t.string :game_name, index: true, foreign_key: true
      t.integer :game_rating
      t.string :game_type, index: true, foreign_key: true
      t.integer :player_number, null: false
      t.integer :player_age, null: false
      t.integer :game_time	
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
