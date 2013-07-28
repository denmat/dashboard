redis_url = "redis://:#{ENV[REDIS_CLOUD_PASSWORD}@#{ENV[REDIS_CLOUD_HOST}:#{REDIS_CLOUD_PORT}"

Sidekiq.configure_server do |config|
  config.redis = { :url => "#{redis_url}/0", :namespace => 'dashboard' }
end

Sidekiq.configure_client do |config|
  config.redis = { :url => "#{redis_url}/0", :namespace => 'dashboard' }
end
