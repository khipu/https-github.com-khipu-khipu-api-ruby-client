# Common files
require 'khipu-chaski-api-client/api_client'
require 'khipu-chaski-api-client/api_error'
require 'khipu-chaski-api-client/version'
require 'khipu-chaski-api-client/configuration'

# Models
require 'khipu-chaski-api-client/models/base_object'
require 'khipu-chaski-api-client/models/success_response'
require 'khipu-chaski-api-client/models/authorization_error'
require 'khipu-chaski-api-client/models/service_error'
require 'khipu-chaski-api-client/models/device'
require 'khipu-chaski-api-client/models/message'
require 'khipu-chaski-api-client/models/msg_property'
require 'khipu-chaski-api-client/models/device_list'

# APIs
require 'khipu-chaski-api-client/api/device_registry_list_api'
require 'khipu-chaski-api-client/api/device_registry_api'
require 'khipu-chaski-api-client/api/recipient_registry_list_api'
require 'khipu-chaski-api-client/api/push_notifications_api'

module KhipuChaski
  class << self
    # Configure sdk using block.
    # KhipuChaski.configure do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # If no block given, return the configuration singleton instance.
    def configure
      if block_given?
        yield Configuration.instance
      else
        Configuration.instance
      end
    end
  end
end
