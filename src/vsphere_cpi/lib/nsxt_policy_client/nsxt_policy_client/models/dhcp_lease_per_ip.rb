=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module NSXTPolicy
  class DhcpLeasePerIP
    # subnet of client network
    attr_accessor :subnet

    # lease time of the ip address, in seconds
    attr_accessor :lease_time

    # mac address of client
    attr_accessor :mac_address

    # expire time of the lease
    attr_accessor :expire_time

    # start time of lease
    attr_accessor :start_time

    # ip address of client
    attr_accessor :ip_address

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'subnet' => :'subnet',
        :'lease_time' => :'lease_time',
        :'mac_address' => :'mac_address',
        :'expire_time' => :'expire_time',
        :'start_time' => :'start_time',
        :'ip_address' => :'ip_address'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'subnet' => :'String',
        :'lease_time' => :'String',
        :'mac_address' => :'String',
        :'expire_time' => :'String',
        :'start_time' => :'String',
        :'ip_address' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'subnet')
        self.subnet = attributes[:'subnet']
      end

      if attributes.has_key?(:'lease_time')
        self.lease_time = attributes[:'lease_time']
      end

      if attributes.has_key?(:'mac_address')
        self.mac_address = attributes[:'mac_address']
      end

      if attributes.has_key?(:'expire_time')
        self.expire_time = attributes[:'expire_time']
      end

      if attributes.has_key?(:'start_time')
        self.start_time = attributes[:'start_time']
      end

      if attributes.has_key?(:'ip_address')
        self.ip_address = attributes[:'ip_address']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @mac_address.nil?
        invalid_properties.push('invalid value for "mac_address", mac_address cannot be nil.')
      end

      if @start_time.nil?
        invalid_properties.push('invalid value for "start_time", start_time cannot be nil.')
      end

      if @ip_address.nil?
        invalid_properties.push('invalid value for "ip_address", ip_address cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @mac_address.nil?
      return false if @start_time.nil?
      return false if @ip_address.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          subnet == o.subnet &&
          lease_time == o.lease_time &&
          mac_address == o.mac_address &&
          expire_time == o.expire_time &&
          start_time == o.start_time &&
          ip_address == o.ip_address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [subnet, lease_time, mac_address, expire_time, start_time, ip_address].hash
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
        temp_model = NSXTPolicy.const_get(type).new
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