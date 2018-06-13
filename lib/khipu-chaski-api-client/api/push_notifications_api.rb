require "uri"

module KhipuChaski
  class PushNotificationsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Enviar un nuevo mensaje
    # Encolar un nuevo mensaje para dispositivos moviles.
    # @param recipient_id_set Receptores del mensaje
    # @param subject Asunto del mensaje
    # @param body cuerpo del mensaje
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def msg_post(recipient_id_set, subject, body, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PushNotificationsApi#msg_post ..."
      end
      
      # verify the required parameter 'recipient_id_set' is set
      fail "Missing the required parameter 'recipient_id_set' when calling msg_post" if recipient_id_set.nil?
      
      # verify the required parameter 'subject' is set
      fail "Missing the required parameter 'subject' when calling msg_post" if subject.nil?
      
      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling msg_post" if body.nil?
      
      # resource path
      path = "/msg".sub('{format}','json')

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
      form_params["recipientIdSet"] = recipient_id_set
      form_params["subject"] = subject
      form_params["body"] = body

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
        Configuration.logger.debug "API called: PushNotificationsApi#msg_post. Result: #{result.inspect}"
      end
      return result
    end
  end
end




