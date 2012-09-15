# encoding: utf-8

# Setup CarrierWave ready for testing with the API key
CarrierWave.configure do |config|
  config.filepickerio_api_key = "TESTAPIKEY"
end