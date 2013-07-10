# status data
states = [ [ 1, 'OK' ], [ 1, 'WARNING' ], [ 2, 'CRITICAL' ] ]
hostnames = [ [ 'app1', 1 ], [ 'app2', 2 ], [ 'web1', 3 ], [ 'db1', 4 ] ]
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
  Host.create!(:hostname => h[0], :host_id => h[1])
end

State.delete_all
states.each do |s|
  State.create!(:status_id => s[0], :status => s[1])
end

Service.delete_all
services.each do |s|
  Service.create!(:service => s)
end

Incident.delete_all
incidents.each do |i|
  Incident.create(i)
end