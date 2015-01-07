class CreateDateRecord < ActiveRecord::Migration
  def change
    create_table :date_records do |t|
      t.string :year
      t.string :month
      t.string :day
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
