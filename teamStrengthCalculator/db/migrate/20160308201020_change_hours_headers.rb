class ChangeHoursHeaders < ActiveRecord::Migration
  def self.up
		rename_column :hours, :client, :client_id
		rename_column :hours, :developer, :developer_id
		rename_column :hours, :sprint, :sprint_id
	end
		
	def self.down
		rename_column :hours, :client_id, :client
		rename_column :hours, :developer_id, :developer
		rename_column :hours, :sprint_id, :sprint
	end
end
