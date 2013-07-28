class Host < ActiveRecord::Base
  has_many :incidents
  has_many :services
end