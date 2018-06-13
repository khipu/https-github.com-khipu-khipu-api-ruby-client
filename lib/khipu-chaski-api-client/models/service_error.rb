module KhipuChaski
  # 
  class ServiceError < BaseObject
    attr_accessor :status, :message
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Código del error
        :'status' => :'status',
        
        # Mensaje del error
        :'message' => :'message'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'status' => :'Integer',
        :'message' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'status']
        self.status = attributes[:'status']
      end
      
      if attributes[:'message']
        self.message = attributes[:'message']
      end
      
    end

  end
end
