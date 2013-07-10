# status data
status = [ [ 1, 'OK' ], [ 1, 'WARNING' ], [ 2, 'CRITICAL' ] ]
hostnames = [ [ 'app1', 1 ], [ 'app2', 2 ], [ 'web1', 3 ], [ 'db1', 4 ] ]
services = [ 'CPU', 'DISK', 'WWW' ]

#Status.delete_all
#status.each do |s|
#  Status.create!(:status => s[0], :status_human => s[1])
#end

Host.delete_all
hostnames.each do |h|
  Host.create!(:hostname => h[0], :host_id => h[1])
end