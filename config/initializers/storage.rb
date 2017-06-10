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
    config.cache_dir = "#{Rails.root}/tmp/uploads"
    config.fog_directory  = "haathi"
    config.fog_public     = false
    config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
    config.storage = :fog
    else
    config.storage :file
    config.enable_processing = false if Rails.env.test?
  end  
end


