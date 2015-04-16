class Workorder < ActiveRecord::Base
  belongs_to :item
  has_many :mileagelogs
end
