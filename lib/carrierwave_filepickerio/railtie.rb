# encoding: utf-8

module CarrierWave
  module Filepickerio
    class Railtie < Rails::Railtie

      # Lazy load the form builder with action_view
      initializer 'carrierwave_filepickerio.action_view' do
        ActiveSupport.on_load :action_view do
          require 'carrierwave_filepickerio/form_builder'
        end
      end
    end
  end
end