class Contest < ActiveRecord::Base
  attr_accessible :end_date, :present_to_win, :prize, :start_date, :sponsor_id, :meeting_id
  belongs_to :sponsor
  belongs_to :meeting
end
