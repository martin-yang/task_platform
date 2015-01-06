class Task < ActiveRecord::Base
  validates :content, :num, presence: true
  before_validation :build_num

  private
  def build_num
    unless num
      now_date = Time.now
      num = "#{now_date.year}#{now_date.to_i}"
    end
  end
end