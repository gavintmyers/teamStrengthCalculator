class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
