class Remind < ActiveRecord::Base
  validates :content, :clook, presence: true
  
  state_machine :state, :initial => :new do
    event :close do
      transition :new => :closed
    end
  end
end
