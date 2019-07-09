require "uri"

module KhipuChaski
  class RecipientRegistryListApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Lista de receptores de asociados a la aplicacion
    # Obtiene la lista de receptores asociados a la aplicacion
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def get_recipients(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: RecipientRegistryListApi#get_recipients ..."
      end
      
      # resource path
      path = "/recipients".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['khipu']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<String>')
      if Configuration.debugging
        Configuration.logger.debug "API called: RecipientRegistryListApi#get_recipients. Result: #{result.inspect}"
      end
      return result
    end
  end
end




