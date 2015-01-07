class DateRecord < ActiveRecord::Base
  validates :year, :month, :day, presence: true
  has_many :tasks, class_name: "Task"
end