class Task < ActiveRecord::Base  
  validates :name, :content, :user, presence: true
  before_validation :build_number

  belongs_to :date_record, class_name: "DateRecord"
  belongs_to :user, class_name: "User"
  after_create :create_date_record

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

  def create_date_record
    now_date = Time.now
    date_record = DateRecord.find_or_create_by(year: now_date.year, month: now_date.month, day: now_date.day)
    self.update_attributes(date_record: date_record)
  end
end
