# encoding: utf-8

module CarrierWave
  module Filepickerio
    module Uploader
      module Configuration
        extend ActiveSupport::Concern

        included do
          add_config :filepickerio_api_key
          reset_direct_config
        end

        module ClassMethods
          def reset_direct_config
            configure do |config|
              config.filepickerio_api_key = nil
            end
          end
        end
      end
    end
  end
end