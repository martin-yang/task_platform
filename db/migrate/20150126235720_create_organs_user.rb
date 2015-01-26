class CreateOrgansUser < ActiveRecord::Migration
  def change
    create_table :organs_users do |t|
      t.integer :organ_id
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
