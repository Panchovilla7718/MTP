class Opening < ActiveRecord::Base
  belongs_to :supervisor
  validates :supervisor_id, presence: true
  validates :position, presence: true
  validates :replacing, presence: true
  validates :shift, presence: true
  validates :workschedule, presence: true
  validates :status, presence: true
  
end