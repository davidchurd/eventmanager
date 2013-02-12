class Sponsor < ActiveRecord::Base
  attr_accessible :logo, :url
  has_one :exhibitor
  has_and_belongs_to_many :meetings
  
  validates:logo, :presence =>true
  validates:url, :presence =>true
  
  def sponsor_url
    "#{url}"
  end
end
