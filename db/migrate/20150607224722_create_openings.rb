class CreateOpenings < ActiveRecord::Migration
  def change
    create_table :openings do |t|
      t.string :position
      t.string :replacing
      t.string :shift
      t.string :workschedule
      t.string :status
      t.timestamps
    end
  end
end
