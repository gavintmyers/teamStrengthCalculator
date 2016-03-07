class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.text :name
      t.text :type

      t.timestamps null: false
    end
  end
end
