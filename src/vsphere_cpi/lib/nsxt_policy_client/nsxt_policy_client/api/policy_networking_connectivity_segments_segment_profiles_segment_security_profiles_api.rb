=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXTPolicy
  class PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # PUT segment security profile id
    # Create or replace a segment security profile 
    # @param segment_security_profile_id Segment security profile id
    # @param segment_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [SegmentSecurityProfile]
    def create_or_update_segment_security_profile(segment_security_profile_id, segment_security_profile, opts = {})
      data, _status_code, _headers = create_or_update_segment_security_profile_with_http_info(segment_security_profile_id, segment_security_profile, opts)
      data
    end

    # PUT segment security profile id
    # Create or replace a segment security profile 
    # @param segment_security_profile_id Segment security profile id
    # @param segment_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(SegmentSecurityProfile, Fixnum, Hash)>] SegmentSecurityProfile data, response status code and response headers
    def create_or_update_segment_security_profile_with_http_info(segment_security_profile_id, segment_security_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.create_or_update_segment_security_profile ...'
      end
      # verify the required parameter 'segment_security_profile_id' is set
      if @api_client.config.client_side_validation && segment_security_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_security_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.create_or_update_segment_security_profile"
      end
      # verify the required parameter 'segment_security_profile' is set
      if @api_client.config.client_side_validation && segment_security_profile.nil?
        fail ArgumentError, "Missing the required parameter 'segment_security_profile' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.create_or_update_segment_security_profile"
      end
      # resource path
      local_var_path = '/infra/segment-security-profiles/{segment-security-profile-id}'.sub('{' + 'segment-security-profile-id' + '}', segment_security_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(segment_security_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SegmentSecurityProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi#create_or_update_segment_security_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # PUT segment security profile id
    # Create or replace a segment security profile 
    # @param segment_security_profile_id Segment security profile id
    # @param segment_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [SegmentSecurityProfile]
    def create_or_update_segment_security_profile_0(segment_security_profile_id, segment_security_profile, opts = {})
      data, _status_code, _headers = create_or_update_segment_security_profile_0_with_http_info(segment_security_profile_id, segment_security_profile, opts)
      data
    end

    # PUT segment security profile id
    # Create or replace a segment security profile 
    # @param segment_security_profile_id Segment security profile id
    # @param segment_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(SegmentSecurityProfile, Fixnum, Hash)>] SegmentSecurityProfile data, response status code and response headers
    def create_or_update_segment_security_profile_0_with_http_info(segment_security_profile_id, segment_security_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.create_or_update_segment_security_profile_0 ...'
      end
      # verify the required parameter 'segment_security_profile_id' is set
      if @api_client.config.client_side_validation && segment_security_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_security_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.create_or_update_segment_security_profile_0"
      end
      # verify the required parameter 'segment_security_profile' is set
      if @api_client.config.client_side_validation && segment_security_profile.nil?
        fail ArgumentError, "Missing the required parameter 'segment_security_profile' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.create_or_update_segment_security_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/segment-security-profiles/{segment-security-profile-id}'.sub('{' + 'segment-security-profile-id' + '}', segment_security_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(segment_security_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SegmentSecurityProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi#create_or_update_segment_security_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # DELETE segment security profile
    # API will delete segment security profile with the given id. 
    # @param segment_security_profile_id Segment security profile id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def delete_segment_security_profile(segment_security_profile_id, opts = {})
      delete_segment_security_profile_with_http_info(segment_security_profile_id, opts)
      nil
    end

    # DELETE segment security profile
    # API will delete segment security profile with the given id. 
    # @param segment_security_profile_id Segment security profile id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_segment_security_profile_with_http_info(segment_security_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.delete_segment_security_profile ...'
      end
      # verify the required parameter 'segment_security_profile_id' is set
      if @api_client.config.client_side_validation && segment_security_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_security_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.delete_segment_security_profile"
      end
      # resource path
      local_var_path = '/infra/segment-security-profiles/{segment-security-profile-id}'.sub('{' + 'segment-security-profile-id' + '}', segment_security_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

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
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi#delete_segment_security_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # DELETE segment security profile
    # API will delete segment security profile with the given id. 
    # @param segment_security_profile_id Segment security profile id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def delete_segment_security_profile_0(segment_security_profile_id, opts = {})
      delete_segment_security_profile_0_with_http_info(segment_security_profile_id, opts)
      nil
    end

    # DELETE segment security profile
    # API will delete segment security profile with the given id. 
    # @param segment_security_profile_id Segment security profile id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_segment_security_profile_0_with_http_info(segment_security_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.delete_segment_security_profile_0 ...'
      end
      # verify the required parameter 'segment_security_profile_id' is set
      if @api_client.config.client_side_validation && segment_security_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_security_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.delete_segment_security_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/segment-security-profiles/{segment-security-profile-id}'.sub('{' + 'segment-security-profile-id' + '}', segment_security_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

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
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi#delete_segment_security_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # GET Segment security profile id
    # API will return details of the segment security profile with given id. If the profile does not exist, it will return 404. 
    # @param segment_security_profile_id Segment security profile id
    # @param [Hash] opts the optional parameters
    # @return [SegmentSecurityProfile]
    def get_segment_security_profile(segment_security_profile_id, opts = {})
      data, _status_code, _headers = get_segment_security_profile_with_http_info(segment_security_profile_id, opts)
      data
    end

    # GET Segment security profile id
    # API will return details of the segment security profile with given id. If the profile does not exist, it will return 404. 
    # @param segment_security_profile_id Segment security profile id
    # @param [Hash] opts the optional parameters
    # @return [Array<(SegmentSecurityProfile, Fixnum, Hash)>] SegmentSecurityProfile data, response status code and response headers
    def get_segment_security_profile_with_http_info(segment_security_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.get_segment_security_profile ...'
      end
      # verify the required parameter 'segment_security_profile_id' is set
      if @api_client.config.client_side_validation && segment_security_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_security_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.get_segment_security_profile"
      end
      # resource path
      local_var_path = '/infra/segment-security-profiles/{segment-security-profile-id}'.sub('{' + 'segment-security-profile-id' + '}', segment_security_profile_id.to_s)

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
        :return_type => 'SegmentSecurityProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi#get_segment_security_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # GET Segment security profile id
    # API will return details of the segment security profile with given id. If the profile does not exist, it will return 404. 
    # @param segment_security_profile_id Segment security profile id
    # @param [Hash] opts the optional parameters
    # @return [SegmentSecurityProfile]
    def get_segment_security_profile_0(segment_security_profile_id, opts = {})
      data, _status_code, _headers = get_segment_security_profile_0_with_http_info(segment_security_profile_id, opts)
      data
    end

    # GET Segment security profile id
    # API will return details of the segment security profile with given id. If the profile does not exist, it will return 404. 
    # @param segment_security_profile_id Segment security profile id
    # @param [Hash] opts the optional parameters
    # @return [Array<(SegmentSecurityProfile, Fixnum, Hash)>] SegmentSecurityProfile data, response status code and response headers
    def get_segment_security_profile_0_with_http_info(segment_security_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.get_segment_security_profile_0 ...'
      end
      # verify the required parameter 'segment_security_profile_id' is set
      if @api_client.config.client_side_validation && segment_security_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_security_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.get_segment_security_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/segment-security-profiles/{segment-security-profile-id}'.sub('{' + 'segment-security-profile-id' + '}', segment_security_profile_id.to_s)

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
        :return_type => 'SegmentSecurityProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi#get_segment_security_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List segment security profiles
    # API will list all segment security profiles. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [SegmentSecurityProfileListResult]
    def list_segment_security_profiles(opts = {})
      data, _status_code, _headers = list_segment_security_profiles_with_http_info(opts)
      data
    end

    # List segment security profiles
    # API will list all segment security profiles. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(SegmentSecurityProfileListResult, Fixnum, Hash)>] SegmentSecurityProfileListResult data, response status code and response headers
    def list_segment_security_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.list_segment_security_profiles ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.list_segment_security_profiles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.list_segment_security_profiles, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/segment-security-profiles'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'include_mark_for_delete_objects'] = opts[:'include_mark_for_delete_objects'] if !opts[:'include_mark_for_delete_objects'].nil?
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
        :return_type => 'SegmentSecurityProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi#list_segment_security_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List segment security profiles
    # API will list all segment security profiles. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [SegmentSecurityProfileListResult]
    def list_segment_security_profiles_0(opts = {})
      data, _status_code, _headers = list_segment_security_profiles_0_with_http_info(opts)
      data
    end

    # List segment security profiles
    # API will list all segment security profiles. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(SegmentSecurityProfileListResult, Fixnum, Hash)>] SegmentSecurityProfileListResult data, response status code and response headers
    def list_segment_security_profiles_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.list_segment_security_profiles_0 ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.list_segment_security_profiles_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.list_segment_security_profiles_0, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/global-infra/segment-security-profiles'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'include_mark_for_delete_objects'] = opts[:'include_mark_for_delete_objects'] if !opts[:'include_mark_for_delete_objects'].nil?
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
        :return_type => 'SegmentSecurityProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi#list_segment_security_profiles_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # PATCH segment security profile id
    # Create a new segment security profile if the segment security profile with given id does not exist. Otherwise, PATCH the existing segment security profile 
    # @param segment_security_profile_id Segment security profile id
    # @param segment_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def patch_segment_security_profile(segment_security_profile_id, segment_security_profile, opts = {})
      patch_segment_security_profile_with_http_info(segment_security_profile_id, segment_security_profile, opts)
      nil
    end

    # PATCH segment security profile id
    # Create a new segment security profile if the segment security profile with given id does not exist. Otherwise, PATCH the existing segment security profile 
    # @param segment_security_profile_id Segment security profile id
    # @param segment_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_segment_security_profile_with_http_info(segment_security_profile_id, segment_security_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.patch_segment_security_profile ...'
      end
      # verify the required parameter 'segment_security_profile_id' is set
      if @api_client.config.client_side_validation && segment_security_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_security_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.patch_segment_security_profile"
      end
      # verify the required parameter 'segment_security_profile' is set
      if @api_client.config.client_side_validation && segment_security_profile.nil?
        fail ArgumentError, "Missing the required parameter 'segment_security_profile' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.patch_segment_security_profile"
      end
      # resource path
      local_var_path = '/infra/segment-security-profiles/{segment-security-profile-id}'.sub('{' + 'segment-security-profile-id' + '}', segment_security_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(segment_security_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi#patch_segment_security_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # PATCH segment security profile id
    # Create a new segment security profile if the segment security profile with given id does not exist. Otherwise, PATCH the existing segment security profile 
    # @param segment_security_profile_id Segment security profile id
    # @param segment_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def patch_segment_security_profile_0(segment_security_profile_id, segment_security_profile, opts = {})
      patch_segment_security_profile_0_with_http_info(segment_security_profile_id, segment_security_profile, opts)
      nil
    end

    # PATCH segment security profile id
    # Create a new segment security profile if the segment security profile with given id does not exist. Otherwise, PATCH the existing segment security profile 
    # @param segment_security_profile_id Segment security profile id
    # @param segment_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_segment_security_profile_0_with_http_info(segment_security_profile_id, segment_security_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.patch_segment_security_profile_0 ...'
      end
      # verify the required parameter 'segment_security_profile_id' is set
      if @api_client.config.client_side_validation && segment_security_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_security_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.patch_segment_security_profile_0"
      end
      # verify the required parameter 'segment_security_profile' is set
      if @api_client.config.client_side_validation && segment_security_profile.nil?
        fail ArgumentError, "Missing the required parameter 'segment_security_profile' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi.patch_segment_security_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/segment-security-profiles/{segment-security-profile-id}'.sub('{' + 'segment-security-profile-id' + '}', segment_security_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(segment_security_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSegmentSecurityProfilesApi#patch_segment_security_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
