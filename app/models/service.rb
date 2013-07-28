class Service < ActiveRecord::Base
  has_many :hosts
  has_many :incidents
end