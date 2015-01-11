class GoodAfterNoon
  include Sidekiq::Worker

  def perform emails
    emails = emails.split(",")
    users = User.where(email: emails)
    users.each do |user|
      TaskMailer.good_after_noon(user).deliver
    end
  end
end
