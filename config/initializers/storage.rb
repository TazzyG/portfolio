require 'carrierwave/orm/activerecord'
require 'carrierwave'
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
      region: 'ca-central-1'
      # host: 's3.creativecalgary.ca'
      # endpoint: 'https://s3.creativecalgary.ca:8080'
  }
    config.fog_directory  = "haathi"
    config.fog_public     = false
    
    else
    config.storage :file
    config.enable_processing = false if Rails.env.test?
  end
  
  
end