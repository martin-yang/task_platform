class Organ < ActiveRecord::Base
  validates :name, :context, presence: true

  has_and_belongs_to_many :users, class_name: "User"
end
