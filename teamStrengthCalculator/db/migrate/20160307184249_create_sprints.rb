class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.date :start_date
      t.date :end_date
      t.integer :iteration_length
      t.decimal :part_time_multiplier
      t.timestamps null: false
    end
  end
end
