class Minor < ActiveRecord::Base
  belongs_to :user
  has_one :minor_address
end
