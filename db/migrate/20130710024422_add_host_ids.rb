class AddHostIds < ActiveRecord::Migration
  def change
    rename_column :incidents, :host, :host_id
    
    create_table :hosts do |t|
      t.string :hostname
      t.integer :host_id
    end
  end
end
