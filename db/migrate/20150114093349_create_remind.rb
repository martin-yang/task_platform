class CreateRemind < ActiveRecord::Migration
  def change
    create_table :reminds do |t|
      t.text :content
      t.datetime :clook
      t.string :state
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
