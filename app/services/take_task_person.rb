class TakeTaskPerson
  def self.execute now_time
    DateRecord.take_tasks(Time.now).joins(:user).map(&:user).uniq
  end
end
