# encoding: utf-8

require 'action_view'
require 'action_view/template'

require 'carrierwave_filepickerio/form_builder'

module FormBuilderHelpers
  include ActionView::Helpers::FormHelper
  include ActionView::Context
  include ActionController::RecordIdentifier

  def protect_against_forgery?
    false
  end
end