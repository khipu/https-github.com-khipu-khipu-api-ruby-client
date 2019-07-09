require "uri"

module KhipuChaski
  class DeviceRegistryListApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Lista de dispositivos
    # Obtiene la lista de dispositivos registrados
    # @param [Hash] opts the optional parameters
    # @return [DeviceList]
    def get_devices(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: DeviceRegistryListApi#get_devices ..."
      end
      
      # resource path
      path = "/devices".sub('{format}','json')

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
        :return_type => 'DeviceList')
      if Configuration.debugging
        Configuration.logger.debug "API called: DeviceRegistryListApi#get_devices. Result: #{result.inspect}"
      end
      return result
    end

    # Lista de dispositivos asociados a un id de receptor
    # Obtiene la lista de dispositivos asociados a un receptor
    # @param recipient_id Identificador asociado a un receptor de mensajes push
    # @param [Hash] opts the optional parameters
    # @return [DeviceList]
    def get_recipient_devices(recipient_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: DeviceRegistryListApi#get_recipient_devices ..."
      end
      
      # verify the required parameter 'recipient_id' is set
      fail "Missing the required parameter 'recipient_id' when calling get_recipient_devices" if recipient_id.nil?
      
      # resource path
      path = "/recipients/{recipientId}/devices".sub('{format}','json').sub('{' + 'recipientId' + '}', recipient_id.to_s)

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
        :return_type => 'DeviceList')
      if Configuration.debugging
        Configuration.logger.debug "API called: DeviceRegistryListApi#get_recipient_devices. Result: #{result.inspect}"
      end
      return result
    end
  end
end




