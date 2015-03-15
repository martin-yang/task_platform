class Role < ActiveRecord::Base
  validates :name, presence: true

  class << self
    include DefaultRole
  end
end
