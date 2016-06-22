class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
    	t.integer  :roommate_id
    	t.integer  :match_id
    	t.boolean  :reply

    	t.timestamps(null:false)
    end
  end
end
