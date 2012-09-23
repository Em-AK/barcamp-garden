class EventAttendee < ActiveRecord::Base
  attr_accessible :comment, :event, :user

  belongs_to :event
  belongs_to :user

  validates_uniqueness_of :user_id, :scope => [:event_id]
end
