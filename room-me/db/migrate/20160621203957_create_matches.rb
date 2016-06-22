class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
    	t.boolean  :fulfilled

    	t.timestamps(null:false)
    end
  end
end
