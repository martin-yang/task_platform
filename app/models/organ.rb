class Organ < ActiveRecord::Base
  include OrganRole
  validates :name, :context, presence: true

  has_and_belongs_to_many :users, class_name: "User"
  has_many :actors, class_name: "Actor"
  after_create :add_default_roles
  
  def join_us user
    return false if self.users.include?(user)
    self.users << user
    self.save!
  end
end
