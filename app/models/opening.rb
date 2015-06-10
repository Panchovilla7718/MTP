class Opening < ActiveRecord::Base
  validates :position, presence: true
  validates :replacing, presence: true
  validates :shift, presence: true
  validates :workschedule, presence: true
  validates :status, presence: true
  
end