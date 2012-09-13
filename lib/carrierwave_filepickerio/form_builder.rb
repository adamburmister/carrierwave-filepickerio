module CarrierWaveFilepickerio
  class FormBuilder < ActionView::Helpers::FormBuilder
    def filepickerio_field(object_name, method, options = {})
      InstanceTag.new(object_name, method, self, options.delete(:object)).to_input_field_tag("filepicker", options)
    end
  end
end