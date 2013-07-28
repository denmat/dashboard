# status data
states = [ 'OK', 'WARNING', 'CRITICAL' ]
hostnames = [ 'app1', 'app2', 'web1', 'db1' ]
services = [ 'CPU', 'DISK', 'WWW' ]
incidents = [ {
  :problem_id       => 1,
  :host_id          => 1,
  :service_id       => 1,
  :status_id        => 2,
  :output           => 'this is output',
  :open             => '20130710123302',
  :jira_id          => 'ops-1',
  :jira_url         => 'http://jira.example.com/ops-1',
  :acknowledged_by  => 'me',
  :closed_by        => nil
  } ]
  
Host.delete_all
hostnames.each do |h|
  Host.create!(:hostname => h)
end

State.delete_all
states.each do |s|
  State.create!(:state => s)
end

Service.delete_all
services.each do |s|
  Service.create!(:service => s)
end

Incident.delete_all
incidents.each do |i|
  Incident.create(i)
end
