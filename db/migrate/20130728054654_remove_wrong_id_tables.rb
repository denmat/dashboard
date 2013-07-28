class RemoveWrongIdTables < ActiveRecord::Migration
  def change
    change_table :services do |t|
      t.remove :service_id
    end
    change_table :hosts do |t|
      t.remove :hosts_id
    end
    drop_table :states 
  end
end
