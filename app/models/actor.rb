class Actor < ActiveRecord::Base
  validates :organ, :role, presence: true
  belongs_to :organ, class_name: "Organ"
  belongs_to :role, class_name: "Role"
end
