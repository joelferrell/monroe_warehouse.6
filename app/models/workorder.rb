class Workorder < ActiveRecord::Base
  belongs_to :item
  has_many :mileagelogs
  has_many :timelogs
end
