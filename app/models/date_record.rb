class DateRecord < ActiveRecord::Base
  validates :year, :month, :day, presence: true
  has_many :tasks, class_name: "Task"

  def self.take_tasks nt
    date_record = self.find_or_create_by(year: nt.year, month: nt.month, day: nt.day)
    date_record.tasks
  end
end
