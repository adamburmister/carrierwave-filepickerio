# encoding: utf-8

module CarrierwaveFilepickerio
  class Railtie < Rails::Railtie

    config.before_initialize do
      # Allow `javascript_include_tag :filepickerio`
      config.action_view.javascript_expansions[:filepickerio] = '//api.filepicker.io/v0/filepicker.js'
    end

    # Lazy load the form builder with action_view
    initializer 'carrierwave_filepickerio.action_view' do
      ActiveSupport.on_load :action_view do
        require 'carrierwave_filepickerio/form_builder'
      end
    end

  end
end