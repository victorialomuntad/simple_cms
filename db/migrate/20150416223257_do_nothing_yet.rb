class DoNothingYet < ActiveRecord::Migration
  def up
  	create_table :customer do |t|
  		t.string "fname"
  		t.string "lname"
  	end
  end

  def down
   drop_table :customer
 
  end

end
