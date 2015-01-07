class Task < ActiveRecord::Base
  
  validates :content, presence: true
  before_validation :build_number

  state_machine :state, :initial => :new do
    event :close do
      transition :new => :closed
    end
  end

  private
  def build_number
    unless self.num
      now_date = Time.now
      self.num = "#{now_date.year}#{now_date.to_i}"
      self.state = "new"
    end
  end
end