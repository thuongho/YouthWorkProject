class School < ActiveRecord::Base
  has_one :school_address
  has_many :minors
end
