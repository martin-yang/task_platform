class Organ < ActiveRecord::Base
  validates :name, :desc, persence: true
end
