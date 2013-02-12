class ExhibitorCategory < ActiveRecord::Base
  attr_accessible :name
  has_many :exhibitors
  validates:name,:presence =>true
  
  def category_name
    "#{name}"
  end
  
end
