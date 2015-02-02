class Organ < ActiveRecord::Base
  validates :name, :context, presence: true

  has_and_belongs_to_many :users, class_name: "User"

  def join_us user
    return false if self.users.include?(user)
    self.users << user
    self.save!
  end
end
