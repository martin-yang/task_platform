class CreateActor < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.integer :organ_id
      t.datetime :role_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
