class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|

    t.string :venue_name, index: true, foreign_key: true	
    t.string :venue_location
    t.integer :venue_rating
    t.boolean :game_night

    t.timestamps null: false
    end
  end
end
