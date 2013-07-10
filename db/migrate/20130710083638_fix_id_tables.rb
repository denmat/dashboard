class FixIdTables < ActiveRecord::Migration
  def change
    change_table :services do |t|
      t.remove :service_id
      t.integer :service_id
    end
    drop_table :status
    
    create_table :states do |t|
      t.string :status
      t.integer :status_id
    end
    
  end
end
