class Incident < ActiveRecord::Base
  # we can only have one incident per host or service
  # belongs_to :hosts, :services 
  # we can have on incident with many status
  # has_many :status
  validates :problem_id, :presence => true, :uniqueness => true
  validates :host, :presence => true
  validates :status_id, :presence => true
    
end