# encoding: utf-8

module CarrierWaveFilepickerio
  module ActionViewExtensions
    module FormHelper

      def filepickerio_field(object_name, method, options = {})
        InstanceTag.new(object_name, method, self, options.delete(:object)).to_input_field_tag("filepicker", options)
      end

    end
  end
end

ActionView::Base.send :include, CarrierWaveFilepickerio::ActionViewExtensions::FormHelper
