class Task < ActiveRecord::Base
  validates :content, :num, :state, presence: true
  before_validation :build_num

  state_machine :state, :initial => :new do
    event :close do
      transition :new => :closed
    end
  end

  private
  def build_num
    unless num
      now_date = Time.now
      num = "#{now_date.year}#{now_date.to_i}"
    end
  end
end