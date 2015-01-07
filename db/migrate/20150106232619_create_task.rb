class CreateTask < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :content
      t.string :state
      t.string :num
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
