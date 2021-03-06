class Meeting < ActiveRecord::Base
  attr_accessible :end_date, :name, :start_date, :venue_id, :sponsor_ids
  has_and_belongs_to_many :sponsors
  belongs_to :venue
  
  has_many :contests
  validates:name, :presence =>true
  validates:start_date, :presence =>true
  validates:end_date, :presence =>true
  
  has_many :exhibitors, :through => :sponsor
end
