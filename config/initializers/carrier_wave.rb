# config/initializers/carrierwave.rb
require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV["AWS_ACCESS_KEY_ID"],
      aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
      region: ENV['FOG_REGION']
      host: 's3.haathi-consulting.com'
      endpoint: 'https://s3.haahi-consulting.com:8080'
      # config.asset_host = https:://s3haathi-consulting.com/haathi
  }
    # config.cache_dir = "#{Rails.root}/tmp/uploads"
    config.fog_directory  = ENV['FOG_DIRECTORY']
    # config.fog_public     = false
  else
    config.storage :file
    config.enable_processing = false if Rails.env.test?
  end
end