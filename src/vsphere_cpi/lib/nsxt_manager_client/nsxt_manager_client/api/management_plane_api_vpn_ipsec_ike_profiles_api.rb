=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXT
  class ManagementPlaneApiVpnIpsecIkeProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create custom internet key exchange (IKE) Profile
    # Create custom internet key exchange (IKE) Profile. IKE Profile is a reusable profile that captures IKE and phase one negotiation parameters. System will be pre provisioned with system owned non editable default IKE profile and suggested set of profiles that can be used for peering with popular remote peers like AWS VPN. User can create custom profiles as needed. Any change in profile affects all sessions consuming this profile.
    # @param ip_sec_vpnike_profile 
    # @param [Hash] opts the optional parameters
    # @return [IPSecVPNIKEProfile]
    def create_ip_sec_vpnike_profile(ip_sec_vpnike_profile, opts = {})
      data, _status_code, _headers = create_ip_sec_vpnike_profile_with_http_info(ip_sec_vpnike_profile, opts)
      data
    end

    # Create custom internet key exchange (IKE) Profile
    # Create custom internet key exchange (IKE) Profile. IKE Profile is a reusable profile that captures IKE and phase one negotiation parameters. System will be pre provisioned with system owned non editable default IKE profile and suggested set of profiles that can be used for peering with popular remote peers like AWS VPN. User can create custom profiles as needed. Any change in profile affects all sessions consuming this profile.
    # @param ip_sec_vpnike_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPSecVPNIKEProfile, Fixnum, Hash)>] IPSecVPNIKEProfile data, response status code and response headers
    def create_ip_sec_vpnike_profile_with_http_info(ip_sec_vpnike_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnIpsecIkeProfilesApi.create_ip_sec_vpnike_profile ...'
      end
      # verify the required parameter 'ip_sec_vpnike_profile' is set
      if @api_client.config.client_side_validation && ip_sec_vpnike_profile.nil?
        fail ArgumentError, "Missing the required parameter 'ip_sec_vpnike_profile' when calling ManagementPlaneApiVpnIpsecIkeProfilesApi.create_ip_sec_vpnike_profile"
      end
      # resource path
      local_var_path = '/vpn/ipsec/ike-profiles'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ip_sec_vpnike_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IPSecVPNIKEProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnIpsecIkeProfilesApi#create_ip_sec_vpnike_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete custom IKE Profile
    # Delete custom IKE Profile. Profile can not be deleted if profile has references to it.
    # @param ipsec_vpn_ike_profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere  (default to false)
    # @return [nil]
    def delete_ip_sec_vpnike_profile(ipsec_vpn_ike_profile_id, opts = {})
      delete_ip_sec_vpnike_profile_with_http_info(ipsec_vpn_ike_profile_id, opts)
      nil
    end

    # Delete custom IKE Profile
    # Delete custom IKE Profile. Profile can not be deleted if profile has references to it.
    # @param ipsec_vpn_ike_profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_ip_sec_vpnike_profile_with_http_info(ipsec_vpn_ike_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnIpsecIkeProfilesApi.delete_ip_sec_vpnike_profile ...'
      end
      # verify the required parameter 'ipsec_vpn_ike_profile_id' is set
      if @api_client.config.client_side_validation && ipsec_vpn_ike_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipsec_vpn_ike_profile_id' when calling ManagementPlaneApiVpnIpsecIkeProfilesApi.delete_ip_sec_vpnike_profile"
      end
      # resource path
      local_var_path = '/vpn/ipsec/ike-profiles/{ipsec-vpn-ike-profile-id}'.sub('{' + 'ipsec-vpn-ike-profile-id' + '}', ipsec_vpn_ike_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnIpsecIkeProfilesApi#delete_ip_sec_vpnike_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get IKE Profile
    # Get custom IKE Profile, given the particular id.
    # @param ipsec_vpn_ike_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [IPSecVPNIKEProfile]
    def get_ip_sec_vpnike_profile(ipsec_vpn_ike_profile_id, opts = {})
      data, _status_code, _headers = get_ip_sec_vpnike_profile_with_http_info(ipsec_vpn_ike_profile_id, opts)
      data
    end

    # Get IKE Profile
    # Get custom IKE Profile, given the particular id.
    # @param ipsec_vpn_ike_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPSecVPNIKEProfile, Fixnum, Hash)>] IPSecVPNIKEProfile data, response status code and response headers
    def get_ip_sec_vpnike_profile_with_http_info(ipsec_vpn_ike_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnIpsecIkeProfilesApi.get_ip_sec_vpnike_profile ...'
      end
      # verify the required parameter 'ipsec_vpn_ike_profile_id' is set
      if @api_client.config.client_side_validation && ipsec_vpn_ike_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipsec_vpn_ike_profile_id' when calling ManagementPlaneApiVpnIpsecIkeProfilesApi.get_ip_sec_vpnike_profile"
      end
      # resource path
      local_var_path = '/vpn/ipsec/ike-profiles/{ipsec-vpn-ike-profile-id}'.sub('{' + 'ipsec-vpn-ike-profile-id' + '}', ipsec_vpn_ike_profile_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IPSecVPNIKEProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnIpsecIkeProfilesApi#get_ip_sec_vpnike_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List IKE profiles
    # Get paginated list of all IKE Profiles.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [IPSecVPNIKEProfileListResult]
    def list_ip_sec_vpnike_profiles(opts = {})
      data, _status_code, _headers = list_ip_sec_vpnike_profiles_with_http_info(opts)
      data
    end

    # List IKE profiles
    # Get paginated list of all IKE Profiles.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(IPSecVPNIKEProfileListResult, Fixnum, Hash)>] IPSecVPNIKEProfileListResult data, response status code and response headers
    def list_ip_sec_vpnike_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnIpsecIkeProfilesApi.list_ip_sec_vpnike_profiles ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiVpnIpsecIkeProfilesApi.list_ip_sec_vpnike_profiles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiVpnIpsecIkeProfilesApi.list_ip_sec_vpnike_profiles, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/vpn/ipsec/ike-profiles'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IPSecVPNIKEProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnIpsecIkeProfilesApi#list_ip_sec_vpnike_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Edit custom IKE Profile
    # Edit custom IKE Profile. System owned profiles are non editable.
    # @param ipsec_vpn_ike_profile_id 
    # @param ip_sec_vpnike_profile 
    # @param [Hash] opts the optional parameters
    # @return [IPSecVPNIKEProfile]
    def update_ip_sec_vpnike_profile(ipsec_vpn_ike_profile_id, ip_sec_vpnike_profile, opts = {})
      data, _status_code, _headers = update_ip_sec_vpnike_profile_with_http_info(ipsec_vpn_ike_profile_id, ip_sec_vpnike_profile, opts)
      data
    end

    # Edit custom IKE Profile
    # Edit custom IKE Profile. System owned profiles are non editable.
    # @param ipsec_vpn_ike_profile_id 
    # @param ip_sec_vpnike_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPSecVPNIKEProfile, Fixnum, Hash)>] IPSecVPNIKEProfile data, response status code and response headers
    def update_ip_sec_vpnike_profile_with_http_info(ipsec_vpn_ike_profile_id, ip_sec_vpnike_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnIpsecIkeProfilesApi.update_ip_sec_vpnike_profile ...'
      end
      # verify the required parameter 'ipsec_vpn_ike_profile_id' is set
      if @api_client.config.client_side_validation && ipsec_vpn_ike_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipsec_vpn_ike_profile_id' when calling ManagementPlaneApiVpnIpsecIkeProfilesApi.update_ip_sec_vpnike_profile"
      end
      # verify the required parameter 'ip_sec_vpnike_profile' is set
      if @api_client.config.client_side_validation && ip_sec_vpnike_profile.nil?
        fail ArgumentError, "Missing the required parameter 'ip_sec_vpnike_profile' when calling ManagementPlaneApiVpnIpsecIkeProfilesApi.update_ip_sec_vpnike_profile"
      end
      # resource path
      local_var_path = '/vpn/ipsec/ike-profiles/{ipsec-vpn-ike-profile-id}'.sub('{' + 'ipsec-vpn-ike-profile-id' + '}', ipsec_vpn_ike_profile_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ip_sec_vpnike_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IPSecVPNIKEProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnIpsecIkeProfilesApi#update_ip_sec_vpnike_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
