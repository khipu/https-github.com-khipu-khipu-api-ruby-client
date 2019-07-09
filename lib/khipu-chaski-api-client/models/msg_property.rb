module KhipuChaski
  # 
  class MsgProperty < BaseObject
    attr_accessor :key, :value
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # nombre de la propiedad
        :'key' => :'key',
        
        # valor de la propiedad
        :'value' => :'value'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'key' => :'String',
        :'value' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'key']
        self.key = attributes[:'key']
      end
      
      if attributes[:'value']
        self.value = attributes[:'value']
      end
      
    end

  end
end
