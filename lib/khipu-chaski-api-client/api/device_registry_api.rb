require "uri"

module KhipuChaski
  class DeviceRegistryApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Registro de dispositivo
    # Registra un dispositivo identificado por su tokenId
    # @param device Dispositivo a registrar
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def add_device(device, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: DeviceRegistryApi#add_device ..."
      end
      
      # verify the required parameter 'device' is set
      fail "Missing the required parameter 'device' when calling add_device" if device.nil?
      
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
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(device)
      

      auth_names = ['khipu']
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: DeviceRegistryApi#add_device. Result: #{result.inspect}"
      end
      return result
    end

    # Registro de dispositivo eliminando alias anteriores
    # Registra un dispositivo identificado por su tokenId, elimina alias anteriores
    # @param device Dispositivo a registrar
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def add_unique_alias_device(device, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: DeviceRegistryApi#add_unique_alias_device ..."
      end
      
      # verify the required parameter 'device' is set
      fail "Missing the required parameter 'device' when calling add_unique_alias_device" if device.nil?
      
      # resource path
      path = "/devices/uniqueAlias".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(device)
      

      auth_names = ['khipu']
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: DeviceRegistryApi#add_unique_alias_device. Result: #{result.inspect}"
      end
      return result
    end

    # Obtiene dispositivo
    # Obtiene la informacion de un dispositivo especifico
    # @param token_id Token que identifica al dispositivo. Tiene la forma &lt;platform&gt;:&lt;registryId&gt;, donde platform puede tomar los valores \&quot;and\&quot; o \&quot;ios\&quot;.
    # @param [Hash] opts the optional parameters
    # @return [Device]
    def get_device(token_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: DeviceRegistryApi#get_device ..."
      end
      
      # verify the required parameter 'token_id' is set
      fail "Missing the required parameter 'token_id' when calling get_device" if token_id.nil?
      
      # resource path
      path = "/devices/{tokenId}".sub('{format}','json').sub('{' + 'tokenId' + '}', token_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
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
        :return_type => 'Device')
      if Configuration.debugging
        Configuration.logger.debug "API called: DeviceRegistryApi#get_device. Result: #{result.inspect}"
      end
      return result
    end

    # Agregar receptor
    # Agregar receptor de un dispositivo especifico
    # @param token_id Token que identifica al dispositivo. Tiene la forma &lt;platform&gt;:&lt;registryId&gt;, donde platform puede tomar los valores \&quot;and\&quot; o \&quot;ios\&quot;.
    # @param recipient_id Identificador asociado a un receptor de mensajes push
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def add_device_recipient(token_id, recipient_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: DeviceRegistryApi#add_device_recipient ..."
      end
      
      # verify the required parameter 'token_id' is set
      fail "Missing the required parameter 'token_id' when calling add_device_recipient" if token_id.nil?
      
      # verify the required parameter 'recipient_id' is set
      fail "Missing the required parameter 'recipient_id' when calling add_device_recipient" if recipient_id.nil?
      
      # resource path
      path = "/devices/{tokenId}/recipients/{recipientId}".sub('{format}','json').sub('{' + 'tokenId' + '}', token_id.to_s).sub('{' + 'recipientId' + '}', recipient_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['khipu']
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: DeviceRegistryApi#add_device_recipient. Result: #{result.inspect}"
      end
      return result
    end

    # Elimina receptor
    # Elimina receptor de un dispositivo especifico
    # @param token_id Token que identifica al dispositivo. Tiene la forma &lt;platform&gt;:&lt;registryId&gt;, donde platform puede tomar los valores \&quot;and\&quot; o \&quot;ios\&quot;.
    # @param recipient_id Identificador asociado a un receptor de mensajes push
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def remove_device_recipient(token_id, recipient_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: DeviceRegistryApi#remove_device_recipient ..."
      end
      
      # verify the required parameter 'token_id' is set
      fail "Missing the required parameter 'token_id' when calling remove_device_recipient" if token_id.nil?
      
      # verify the required parameter 'recipient_id' is set
      fail "Missing the required parameter 'recipient_id' when calling remove_device_recipient" if recipient_id.nil?
      
      # resource path
      path = "/devices/{tokenId}/recipients/{recipientId}".sub('{format}','json').sub('{' + 'tokenId' + '}', token_id.to_s).sub('{' + 'recipientId' + '}', recipient_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['khipu']
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: DeviceRegistryApi#remove_device_recipient. Result: #{result.inspect}"
      end
      return result
    end
  end
end




