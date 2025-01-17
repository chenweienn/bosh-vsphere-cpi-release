=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module NSXT
  # Node network route properties
  class NodeRouteProperties
    # Link to this resource
    attr_accessor :_self

    # The server will populate this field when returing the resource. Ignored on PUT and POST.
    attr_accessor :_links

    # Schema for this resource
    attr_accessor :_schema

    # Source address to prefer when sending to destinations of route
    attr_accessor :src

    # From address
    attr_accessor :from_address

    # Routing protocol identifier of route
    attr_accessor :proto

    # Route type
    attr_accessor :route_type

    # Metric value of route
    attr_accessor :metric

    # Destination covered by route
    attr_accessor :destination

    # Network interface id of route
    attr_accessor :interface_id

    # Unique identifier for the route
    attr_accessor :route_id

    # Netmask of destination covered by route
    attr_accessor :netmask

    # Scope of destinations covered by route
    attr_accessor :scope

    # Address of next hop
    attr_accessor :gateway

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_self' => :'_self',
        :'_links' => :'_links',
        :'_schema' => :'_schema',
        :'src' => :'src',
        :'from_address' => :'from_address',
        :'proto' => :'proto',
        :'route_type' => :'route_type',
        :'metric' => :'metric',
        :'destination' => :'destination',
        :'interface_id' => :'interface_id',
        :'route_id' => :'route_id',
        :'netmask' => :'netmask',
        :'scope' => :'scope',
        :'gateway' => :'gateway'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_self' => :'SelfResourceLink',
        :'_links' => :'Array<ResourceLink>',
        :'_schema' => :'String',
        :'src' => :'String',
        :'from_address' => :'String',
        :'proto' => :'String',
        :'route_type' => :'String',
        :'metric' => :'String',
        :'destination' => :'String',
        :'interface_id' => :'String',
        :'route_id' => :'String',
        :'netmask' => :'String',
        :'scope' => :'String',
        :'gateway' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'_self')
        self._self = attributes[:'_self']
      end

      if attributes.has_key?(:'_links')
        if (value = attributes[:'_links']).is_a?(Array)
          self._links = value
        end
      end

      if attributes.has_key?(:'_schema')
        self._schema = attributes[:'_schema']
      end

      if attributes.has_key?(:'src')
        self.src = attributes[:'src']
      end

      if attributes.has_key?(:'from_address')
        self.from_address = attributes[:'from_address']
      end

      if attributes.has_key?(:'proto')
        self.proto = attributes[:'proto']
      else
        self.proto = 'boot'
      end

      if attributes.has_key?(:'route_type')
        self.route_type = attributes[:'route_type']
      end

      if attributes.has_key?(:'metric')
        self.metric = attributes[:'metric']
      end

      if attributes.has_key?(:'destination')
        self.destination = attributes[:'destination']
      end

      if attributes.has_key?(:'interface_id')
        self.interface_id = attributes[:'interface_id']
      end

      if attributes.has_key?(:'route_id')
        self.route_id = attributes[:'route_id']
      end

      if attributes.has_key?(:'netmask')
        self.netmask = attributes[:'netmask']
      end

      if attributes.has_key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.has_key?(:'gateway')
        self.gateway = attributes[:'gateway']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @route_type.nil?
        invalid_properties.push('invalid value for "route_type", route_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      proto_validator = EnumAttributeValidator.new('String', ['unspec', 'redirect', 'kernel', 'boot', 'static', 'gated', 'ra', 'mrt', 'zebra', 'bird', 'dnrouted', 'xorp', 'ntk', 'dhcp'])
      return false unless proto_validator.valid?(@proto)
      return false if @route_type.nil?
      route_type_validator = EnumAttributeValidator.new('String', ['default', 'static', 'blackhole', 'prohibit', 'throw', 'unreachable'])
      return false unless route_type_validator.valid?(@route_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proto Object to be assigned
    def proto=(proto)
      validator = EnumAttributeValidator.new('String', ['unspec', 'redirect', 'kernel', 'boot', 'static', 'gated', 'ra', 'mrt', 'zebra', 'bird', 'dnrouted', 'xorp', 'ntk', 'dhcp'])
      unless validator.valid?(proto)
        fail ArgumentError, 'invalid value for "proto", must be one of #{validator.allowable_values}.'
      end
      @proto = proto
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] route_type Object to be assigned
    def route_type=(route_type)
      validator = EnumAttributeValidator.new('String', ['default', 'static', 'blackhole', 'prohibit', 'throw', 'unreachable'])
      unless validator.valid?(route_type)
        fail ArgumentError, 'invalid value for "route_type", must be one of #{validator.allowable_values}.'
      end
      @route_type = route_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _self == o._self &&
          _links == o._links &&
          _schema == o._schema &&
          src == o.src &&
          from_address == o.from_address &&
          proto == o.proto &&
          route_type == o.route_type &&
          metric == o.metric &&
          destination == o.destination &&
          interface_id == o.interface_id &&
          route_id == o.route_id &&
          netmask == o.netmask &&
          scope == o.scope &&
          gateway == o.gateway
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, src, from_address, proto, route_type, metric, destination, interface_id, route_id, netmask, scope, gateway].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = NSXT.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
