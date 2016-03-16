class AddDevelopersSprintsJoinTable < ActiveRecord::Migration
  def self.up
      create_table :developers_sprints, :id => false do |t|
        t.integer :developer_id
        t.integer :sprint_id
      end
    end
   
    def self.down
      drop_table :developers_sprints
    end
end
