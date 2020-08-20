sidekiq_config = {url: "#{ENV["REDIS_URL"]}/0"}
Sidekiq.default_worker_options = {"backtrace" => 100}
Sidekiq.configure_server do |config|
  config.redis = sidekiq_config
  # sidekiq-cron
  schedule_file = "config/sidekiq-cron.yml"
  if File.exist?(schedule_file)
    Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
  end
end

Sidekiq.configure_client do |config|
  config.redis = sidekiq_config
end

# Perform Sidekiq jobs immediately in testing
if Rails.env.test?
  require "sidekiq/testing"
  Sidekiq::Testing.inline!
end
