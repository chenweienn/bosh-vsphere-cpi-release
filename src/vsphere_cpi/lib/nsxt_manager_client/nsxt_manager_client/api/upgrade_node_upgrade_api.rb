=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXT
  class UpgradeNodeUpgradeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Execute upgrade task
    # Execute upgrade task. 
    # @param upgrade_task_properties 
    # @param [Hash] opts the optional parameters
    # @return [UpgradeTaskProperties]
    def execute_upgrade_task_(upgrade_task_properties, opts = {})
      data, _status_code, _headers = execute_upgrade_task__with_http_info(upgrade_task_properties, opts)
      data
    end

    # Execute upgrade task
    # Execute upgrade task. 
    # @param upgrade_task_properties 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpgradeTaskProperties, Fixnum, Hash)>] UpgradeTaskProperties data, response status code and response headers
    def execute_upgrade_task__with_http_info(upgrade_task_properties, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpgradeNodeUpgradeApi.execute_upgrade_task_ ...'
      end
      # verify the required parameter 'upgrade_task_properties' is set
      if @api_client.config.client_side_validation && upgrade_task_properties.nil?
        fail ArgumentError, "Missing the required parameter 'upgrade_task_properties' when calling UpgradeNodeUpgradeApi.execute_upgrade_task_"
      end
      # resource path
      local_var_path = '/node/upgrade/performtask?action=[^/]+'

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
      post_body = @api_client.object_to_http_body(upgrade_task_properties)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UpgradeTaskProperties')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpgradeNodeUpgradeApi#execute_upgrade_task_\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get upgrade progress status
    # Get progress status of last upgrade step, if upgrade bundle is present. 
    # @param [Hash] opts the optional parameters
    # @return [UpgradeProgressStatus]
    def get_upgrade_progress_status(opts = {})
      data, _status_code, _headers = get_upgrade_progress_status_with_http_info(opts)
      data
    end

    # Get upgrade progress status
    # Get progress status of last upgrade step, if upgrade bundle is present. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpgradeProgressStatus, Fixnum, Hash)>] UpgradeProgressStatus data, response status code and response headers
    def get_upgrade_progress_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpgradeNodeUpgradeApi.get_upgrade_progress_status ...'
      end
      # resource path
      local_var_path = '/node/upgrade/progress-status'

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
        :return_type => 'UpgradeProgressStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpgradeNodeUpgradeApi#get_upgrade_progress_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get upgrade task status
    # Get upgrade task status for the given task of the given bundle. Both bundle_name and task_id must be provided, otherwise you will receive a 404 NOT FOUND response. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :bundle_name Bundle Name
    # @option opts [String] :upgrade_task_id Upgrade Task ID
    # @return [UpgradeTaskProperties]
    def get_upgrade_task_status(opts = {})
      data, _status_code, _headers = get_upgrade_task_status_with_http_info(opts)
      data
    end

    # Get upgrade task status
    # Get upgrade task status for the given task of the given bundle. Both bundle_name and task_id must be provided, otherwise you will receive a 404 NOT FOUND response. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :bundle_name Bundle Name
    # @option opts [String] :upgrade_task_id Upgrade Task ID
    # @return [Array<(UpgradeTaskProperties, Fixnum, Hash)>] UpgradeTaskProperties data, response status code and response headers
    def get_upgrade_task_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpgradeNodeUpgradeApi.get_upgrade_task_status ...'
      end
      if @api_client.config.client_side_validation && !opts[:'bundle_name'].nil? && opts[:'bundle_name'] !~ Regexp.new(/^[a-zA-Z0-9.-]+$/)
        fail ArgumentError, "invalid value for 'opts[:\"bundle_name\"]' when calling UpgradeNodeUpgradeApi.get_upgrade_task_status, must conform to the pattern /^[a-zA-Z0-9.-]+$/."
      end

      if @api_client.config.client_side_validation && !opts[:'upgrade_task_id'].nil? && opts[:'upgrade_task_id'] !~ Regexp.new(/^[a-z0-9-]+$/)
        fail ArgumentError, "invalid value for 'opts[:\"upgrade_task_id\"]' when calling UpgradeNodeUpgradeApi.get_upgrade_task_status, must conform to the pattern /^[a-z0-9-]+$/."
      end

      # resource path
      local_var_path = '/node/upgrade'

      # query parameters
      query_params = {}
      query_params[:'bundle_name'] = opts[:'bundle_name'] if !opts[:'bundle_name'].nil?
      query_params[:'upgrade_task_id'] = opts[:'upgrade_task_id'] if !opts[:'upgrade_task_id'].nil?

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
        :return_type => 'UpgradeTaskProperties')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpgradeNodeUpgradeApi#get_upgrade_task_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end