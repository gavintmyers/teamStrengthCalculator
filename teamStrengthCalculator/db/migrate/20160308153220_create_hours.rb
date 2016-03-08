class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.integer :client
      t.integer :developer
      t.integer :sprint
      t.integer :number_of_hours

      t.timestamps null: false
    end
  end
end
