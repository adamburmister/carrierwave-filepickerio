# encoding: utf-8

require 'carrierwave'
require 'carrierwave_filepickerio/version'
require 'carrierwave_filepickerio/railtie' if defined?(Rails)

module CarrierWave
  module Filepickerio
    module Uploader
      # Add our filepickerio_api_key property to the CarrierWave configuration
      autoload :Configuration, 'carrierwave_filepickerio/uploader/configuration'
      CarrierWave::Uploader::Base.send(:include, Configuration)
    end
  end
end