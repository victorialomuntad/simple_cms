class CreatePages < ActiveRecord::Migration
  def up
  	
    create_table :pages do |t|
      #t.references :subjects
      t.integer "subject_id"
      t.string "name"
      t.integer "position"
      t.integer "permalink"
      t.boolean "visible", :default => false
      t.timestamps
    end

    add_index("pages","subject_id")
    add_index("pages","permalink")
  end

  def down
  	drop_table :pages
  end
end