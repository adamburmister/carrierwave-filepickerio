require 'carrierwave_filepickerio/form_builder'

module CarrierWaveFilepickerio
  class Railtie < Rails::Railtie

    initializer "carrierwave_filepickerio.action_view" do
      ActiveSupport.on_load :action_view do
        require 'carrierwave_filepickerio/form_builder'
        require 'carrierwave_filepickerio/action_view_extensions/form_helper'
      end
    end

  end
end