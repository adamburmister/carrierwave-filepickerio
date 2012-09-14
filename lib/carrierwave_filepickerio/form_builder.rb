# encoding: utf-8

module CarrierwaveFilepickerio
  class FormBuilder < ActionView::Helpers::FormBuilder

    # Returns a hidden input tag tailored for a Filepicker.io upload widget to be attached.
    #
    # ==== Examples
    #   filepickerio_field(:student, :midterm)
    #   # => <input type="filepicker" id="student_midterm" name="student[midterm_url]" value="#{@student.midterm_url}" />
    def filepickerio_field(object_name, method, options = {})
      # TODO: Configure this for filepickerio's JS library
      InstanceTag.new(object_name, method, self, options.delete(:object)).to_input_field_tag("filepicker", options)
    end
    
  end
end