class AddDateRecordIdToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :date_record_id, :integer
  end
end
