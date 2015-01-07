class DateRecord < ActiveRecord::Base
  validates :year, :month, :day, presence: true
end