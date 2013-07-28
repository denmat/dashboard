class Incident < ActiveRecord::Base
  # we can only have one incident per host or service
  # belongs_to :hosts, :services 
  # we can have on incident with many status
  # has_many :status
  validates :problem_id, :presence => true, :uniqueness => true
  validates :host_id, :presence => true
  validates :status_id, :presence => true
  belongs_to :host
  belongs_to :service  
end