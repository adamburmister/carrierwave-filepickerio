# encoding: utf-8

require "carrierwave"
require "carrierwave_filepickerio/version"
require 'carrierwave_filepickerio/railtie' if defined?(Rails)

module CarrierwaveFilepickerio
  module Uploader
    autoload :Configuration, 'carrierwave_filepickerio/uploader/configuration'

    CarrierWave::Uploader::Base.send(:include, Configuration)
  end
end