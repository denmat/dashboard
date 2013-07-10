class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.integer :problem_id
      t.string :host
      t.string :service_id
      t.string :status_id
      t.string :output
      t.string :open
      t.string :jira_id
      t.string :jira_url
      t.string :acknowledged_by
      t.string :closed_by
      t.timestamps
    end
    add_index :incidents, :problem_id
    add_index :incidents, :jira_id
    
    create_table :services do |t|
      t.string :service
      t.string :service_id
    end
    create_table :status do |t|
      t.integer :status
      t.string :status_human
    end
  end
end
