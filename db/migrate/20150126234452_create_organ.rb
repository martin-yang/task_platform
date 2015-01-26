class CreateOrgan < ActiveRecord::Migration
  def change
    create_table :organs do |t|
      t.string :name
      t.text :context
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
