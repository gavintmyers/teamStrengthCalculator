class AddClientsSprintsJoinTable < ActiveRecord::Migration
  def self.up
      create_table :clients_sprints, :id => false do |t|
        t.integer :client_id
        t.integer :sprint_id
      end
    end
   
    def self.down
      drop_table :clients_sprints
    end
end
