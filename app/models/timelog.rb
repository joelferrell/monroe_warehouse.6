class Timelog < ActiveRecord::Base
  belongs_to :workorder
  belongs_to :user
end
