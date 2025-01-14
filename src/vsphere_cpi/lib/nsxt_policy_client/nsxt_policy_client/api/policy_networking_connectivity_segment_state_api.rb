=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXTPolicy
  class PolicyNetworkingConnectivitySegmentStateApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get tier-1 segments by configuration state
    # Returns all tier-1 segments with configuration state on the enforcement point specified in the request 
    # @param tier_1_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :configuration_state Configuration state of the segment on enforcement point
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [String] :source Data source type.
    # @return [SegmentConfigurationStateListResult]
    def get_tier1_segments_by_state(tier_1_id, opts = {})
      data, _status_code, _headers = get_tier1_segments_by_state_with_http_info(tier_1_id, opts)
      data
    end

    # Get tier-1 segments by configuration state
    # Returns all tier-1 segments with configuration state on the enforcement point specified in the request 
    # @param tier_1_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :configuration_state Configuration state of the segment on enforcement point
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [String] :source Data source type.
    # @return [Array<(SegmentConfigurationStateListResult, Fixnum, Hash)>] SegmentConfigurationStateListResult data, response status code and response headers
    def get_tier1_segments_by_state_with_http_info(tier_1_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentStateApi.get_tier1_segments_by_state ...'
      end
      # verify the required parameter 'tier_1_id' is set
      if @api_client.config.client_side_validation && tier_1_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_1_id' when calling PolicyNetworkingConnectivitySegmentStateApi.get_tier1_segments_by_state"
      end
      if @api_client.config.client_side_validation && opts[:'configuration_state'] && !['pending', 'in_progress', 'success', 'failed', 'partial_success', 'orphaned', 'unknown'].include?(opts[:'configuration_state'])
        fail ArgumentError, 'invalid value for "configuration_state", must be one of pending, in_progress, success, failed, partial_success, orphaned, unknown'
      end
      if @api_client.config.client_side_validation && opts[:'source'] && !['realtime', 'cached'].include?(opts[:'source'])
        fail ArgumentError, 'invalid value for "source", must be one of realtime, cached'
      end
      # resource path
      local_var_path = '/infra/tier-1s/{tier-1-id}/segments/state'.sub('{' + 'tier-1-id' + '}', tier_1_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'configuration_state'] = opts[:'configuration_state'] if !opts[:'configuration_state'].nil?
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

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
        :return_type => 'SegmentConfigurationStateListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentStateApi#get_tier1_segments_by_state\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get tier-1 segments by configuration state
    # Returns all tier-1 segments with configuration state on the enforcement point specified in the request 
    # @param tier_1_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :configuration_state Configuration state of the segment on enforcement point
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [String] :source Data source type.
    # @return [SegmentConfigurationStateListResult]
    def get_tier1_segments_by_state_0(tier_1_id, opts = {})
      data, _status_code, _headers = get_tier1_segments_by_state_0_with_http_info(tier_1_id, opts)
      data
    end

    # Get tier-1 segments by configuration state
    # Returns all tier-1 segments with configuration state on the enforcement point specified in the request 
    # @param tier_1_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :configuration_state Configuration state of the segment on enforcement point
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [String] :source Data source type.
    # @return [Array<(SegmentConfigurationStateListResult, Fixnum, Hash)>] SegmentConfigurationStateListResult data, response status code and response headers
    def get_tier1_segments_by_state_0_with_http_info(tier_1_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentStateApi.get_tier1_segments_by_state_0 ...'
      end
      # verify the required parameter 'tier_1_id' is set
      if @api_client.config.client_side_validation && tier_1_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_1_id' when calling PolicyNetworkingConnectivitySegmentStateApi.get_tier1_segments_by_state_0"
      end
      if @api_client.config.client_side_validation && opts[:'configuration_state'] && !['pending', 'in_progress', 'success', 'failed', 'partial_success', 'orphaned', 'unknown'].include?(opts[:'configuration_state'])
        fail ArgumentError, 'invalid value for "configuration_state", must be one of pending, in_progress, success, failed, partial_success, orphaned, unknown'
      end
      if @api_client.config.client_side_validation && opts[:'source'] && !['realtime', 'cached'].include?(opts[:'source'])
        fail ArgumentError, 'invalid value for "source", must be one of realtime, cached'
      end
      # resource path
      local_var_path = '/global-infra/tier-1s/{tier-1-id}/segments/state'.sub('{' + 'tier-1-id' + '}', tier_1_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'configuration_state'] = opts[:'configuration_state'] if !opts[:'configuration_state'].nil?
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

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
        :return_type => 'SegmentConfigurationStateListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentStateApi#get_tier1_segments_by_state_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
