module KhipuChaski
  # 
  class Message < BaseObject
    attr_accessor :subject, :recipient_id_set, :body, :msg_properties
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Asunto de mensaje
        :'subject' => :'subject',
        
        # Lista de identificadores de receptores del mensaje
        :'recipient_id_set' => :'recipientIdSet',
        
        # Cuerpo del mensaje
        :'body' => :'body',
        
        # Lista de propiedades del mensaje
        :'msg_properties' => :'msgProperties'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'subject' => :'String',
        :'recipient_id_set' => :'Array<String>',
        :'body' => :'String',
        :'msg_properties' => :'Array<MsgProperty>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'subject']
        self.subject = attributes[:'subject']
      end
      
      if attributes[:'recipientIdSet']
        if (value = attributes[:'recipientIdSet']).is_a?(Array)
          self.recipient_id_set = value
        end
      end
      
      if attributes[:'body']
        self.body = attributes[:'body']
      end
      
      if attributes[:'msgProperties']
        if (value = attributes[:'msgProperties']).is_a?(Array)
          self.msg_properties = value
        end
      end
      
    end

  end
end
