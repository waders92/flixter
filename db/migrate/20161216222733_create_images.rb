class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :caption
      t.integer :course_id

      t.timestamps
    end
    
  end
end
