# encoding: utf-8

require 'spec_helper'

describe CarrierWaveFilepickerio::FormBuilder do
  include FormBuilderHelpers

  describe "#filepickerio_field" do

    def form_with_filepickerio_field
      form {|f| f.filepickerio_field :logo }
    end

    context "form" do
      pending
    end
  end
end
