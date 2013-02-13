class Contest < ActiveRecord::Base
  attr_accessible :end_date, :present_to_win, :prize, :start_date
end
