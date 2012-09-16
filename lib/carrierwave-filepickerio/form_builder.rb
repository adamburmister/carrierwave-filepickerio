module CarrierWave
  module Filepickerio
    class ::ActionView::Helpers::FormBuilder
      
      # Returns a input tag tailored for a Filepicker.io upload widget to be attached for the form object
      def fp_file_field(method, text=nil, options={})
        method = "remote_#{method.to_s}_url".to_sym if !method.to_s.ends_with?('_url')
        @template.fp_file_field(@object_name, method, text, options)
      end

      def fp_save_button(method, text, mime, options={}, &block)
        method = "#{method.to_s}_url".to_sym if !method.to_s.ends_with?('_url')
        options[:type]='button'
        
        # The URL value being used is not absolute, which is required by filepicker.io. So pull out the value
        # from the object now, and make it full relative to the current asset host
        value = options.fetch(:value){ ::ActionView::Helpers::InstanceTag::value_before_type_cast(@object, method.to_s) }
        value &&= ERB::Util.html_escape(value)

        options[:value] = @template.asset_path(value)

        # If no asset host is set create a full url form the request
        if !(options[:value].starts_with?('http://') || options[:value].starts_with?('https://'))
          options[:value] = @template.instance_eval "request.protocol + request.host_with_port + asset_path(value)"
        end

        @template.fp_save_button(@object, method, text, mime, options, &block)
      end
      
    end
  end
end