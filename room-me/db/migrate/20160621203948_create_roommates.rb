class CreateRoommates < ActiveRecord::Migration
  def change
    create_table :roommates do |t|
    	t.string   :username
        t.string   :email
        t.string   :password_digest
        t.string   :gender
    	t.string   :location
    	t.string   :status
    	t.integer  :budget
    	t.integer  :price
    	t.integer  :party_level
    	t.integer  :cleanliness_level
    	t.boolean  :smoker
    	t.boolean  :four_twenty_friendly
    	t.boolean  :pets

    	t.timestamps(null:false)
    end
  end
end
