class Task < ActiveRecord::Base
  
  validates :content, presence: true
  before_validation :build_number

  belongs_to :date_record, class_name: "DateRecord"

  state_machine :state, :initial => :new do
    event :close do
      transition :new => :closed
    end
  end

  private
  def build_number
    unless self.num
      now_date = Time.now
      self.num, self.state = "#{now_date.year}#{now_date.to_i}", "new"
    end
  end
end