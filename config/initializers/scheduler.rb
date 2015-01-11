require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.at '22:05:00' do
  p "------new day start----"
  emails = TakeTaskPerson.execute(Time.now).map(&:email).join(",")
  GoodMorning.perform_async(emails)
end

scheduler.at '22:06:00' do
  p "------noon-------"
  emails = TakeTaskPerson.execute(Time.now).map(&:email).join(",")
  GoodNoon.perform_async(emails)
end

scheduler.at '22:07:00' do
  p "------after noon------"
  emails = TakeTaskPerson.execute(Time.now).map(&:email).join(",")
  GoodAfterNoon.perform_async(emails)
end


