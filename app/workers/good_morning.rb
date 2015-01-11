class GoodMorning
  include Sidekiq::Worker

  def perform emails
    emails = emails.split(",")
    users = User.where(email: emails)
    users.each do |user|
      TaskMailer.good_morning(user).deliver
    end
  end
end
