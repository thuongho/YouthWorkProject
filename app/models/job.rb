class Job < ActiveRecord::Base
  belongs_to :minor
  belongs_to :employer
end
