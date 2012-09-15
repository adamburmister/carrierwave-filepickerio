# encoding: utf-8

module CarrierWave
  module Filepickerio
    class FormBuilder < ActionView::Helpers::FormBuilder

      def fp_file(object_name, method, options = {})
        raise "Hello"
        # TODO: Configure this for filepickerio's JS library
        # InstanceTag.new(object_name, method, self, options.delete(:object)).to_input_field_tag("filepicker", options)
      end
      
    end
  end
end