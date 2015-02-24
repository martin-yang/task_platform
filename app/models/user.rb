class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tasks, class_name: "Task"

  has_and_belongs_to_many :organs, class_name: "Organ"

  def today_tasks
    DateRecord.take_tasks(Time.now).where(user: self)
  end
end
