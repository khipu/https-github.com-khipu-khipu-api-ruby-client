module KhipuChaski
  # 
  class Device < BaseObject
    attr_accessor :token_id, :recipients, :extra_data
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # token para notificaciones asociado al dispositivo. Tiene la forma &lt;platform&gt;:&lt;registryId&gt;, donde platform puede tomar los valores \&quot;and\&quot; o \&quot;ios\&quot;.
        :'token_id' => :'tokenId',
        
        # Lista de receptores asociados al dispositivo
        :'recipients' => :'recipients',
        
        # informacion adicional del dispositivo
        :'extra_data' => :'extraData'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'token_id' => :'String',
        :'recipients' => :'Array<String>',
        :'extra_data' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'tokenId']
        self.token_id = attributes[:'tokenId']
      end
      
      if attributes[:'recipients']
        if (value = attributes[:'recipients']).is_a?(Array)
          self.recipients = value
        end
      end
      
      if attributes[:'extraData']
        self.extra_data = attributes[:'extraData']
      end
      
    end

  end
end
