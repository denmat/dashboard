class FixIncidentsTable < ActiveRecord::Migration
  def change
    drop_table :incidents
    create_table :incidents do |t|
      t.integer   :problem_id
      t.integer   :host_id
      t.integer   :service_id
      t.integer   :status_id
      t.string    :output
      t.datetime  :open
      t.string    :jira_id
      t.string    :jira_url
      t.string    :acknowledged_by
      t.datetime  :closed
      t.string    :closed_by
      t.timestamps
    end
    add_index :incidents, :problem_id
    add_index :incidents, :jira_id
  end
end
