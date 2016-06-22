class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.integer  :match_id
    	t.integer  :roommate_id
    	t.string   :content

    	t.timestamps(null:false)
    end
  end
end
