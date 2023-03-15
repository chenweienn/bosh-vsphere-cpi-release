=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXT
  class ManagementPlaneApiUpgradeBundlesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel upgrade bundle upload
    # Cancel upload of upgrade bundle. This API works only when bundle upload is in-progress and will not work during post-processing of upgrade bundle. If bundle upload is in-progress, then the API call returns http OK response after cancelling the upload and deleting partially uploaded bundle. 
    # @param bundle_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def cancel_upgrade_bundle_upload_cancel_upload(bundle_id, opts = {})
      cancel_upgrade_bundle_upload_cancel_upload_with_http_info(bundle_id, opts)
      nil
    end

    # Cancel upgrade bundle upload
    # Cancel upload of upgrade bundle. This API works only when bundle upload is in-progress and will not work during post-processing of upgrade bundle. If bundle upload is in-progress, then the API call returns http OK response after cancelling the upload and deleting partially uploaded bundle. 
    # @param bundle_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def cancel_upgrade_bundle_upload_cancel_upload_with_http_info(bundle_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUpgradeBundlesApi.cancel_upgrade_bundle_upload_cancel_upload ...'
      end
      # verify the required parameter 'bundle_id' is set
      if @api_client.config.client_side_validation && bundle_id.nil?
        fail ArgumentError, "Missing the required parameter 'bundle_id' when calling ManagementPlaneApiUpgradeBundlesApi.cancel_upgrade_bundle_upload_cancel_upload"
      end
      # resource path
      local_var_path = '/upgrade/bundles/{bundle-id}?action=cancel_upload'.sub('{' + 'bundle-id' + '}', bundle_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUpgradeBundlesApi#cancel_upgrade_bundle_upload_cancel_upload\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Fetch upgrade bundle from given url
    # Fetches the upgrade bundle from url. The call returns after fetch is initiated. Check status by periodically retrieving upgrade bundle upload status using GET /upgrade/bundles/<bundle-id>/upload-status. The upload is complete when the status is SUCCESS. 
    # @param upgrade_bundle_fetch_request 
    # @param [Hash] opts the optional parameters
    # @return [UpgradeBundleId]
    def fetch_upgrade_bundle_from_url(upgrade_bundle_fetch_request, opts = {})
      data, _status_code, _headers = fetch_upgrade_bundle_from_url_with_http_info(upgrade_bundle_fetch_request, opts)
      data
    end

    # Fetch upgrade bundle from given url
    # Fetches the upgrade bundle from url. The call returns after fetch is initiated. Check status by periodically retrieving upgrade bundle upload status using GET /upgrade/bundles/&lt;bundle-id&gt;/upload-status. The upload is complete when the status is SUCCESS. 
    # @param upgrade_bundle_fetch_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpgradeBundleId, Fixnum, Hash)>] UpgradeBundleId data, response status code and response headers
    def fetch_upgrade_bundle_from_url_with_http_info(upgrade_bundle_fetch_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUpgradeBundlesApi.fetch_upgrade_bundle_from_url ...'
      end
      # verify the required parameter 'upgrade_bundle_fetch_request' is set
      if @api_client.config.client_side_validation && upgrade_bundle_fetch_request.nil?
        fail ArgumentError, "Missing the required parameter 'upgrade_bundle_fetch_request' when calling ManagementPlaneApiUpgradeBundlesApi.fetch_upgrade_bundle_from_url"
      end
      # resource path
      local_var_path = '/upgrade/bundles'

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
      post_body = @api_client.object_to_http_body(upgrade_bundle_fetch_request)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UpgradeBundleId')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUpgradeBundlesApi#fetch_upgrade_bundle_from_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get uploaded upgrade bundle information
    # Get uploaded upgrade bundle information 
    # @param bundle_id 
    # @param [Hash] opts the optional parameters
    # @return [UpgradeBundleInfo]
    def get_upgrade_bundle_info(bundle_id, opts = {})
      data, _status_code, _headers = get_upgrade_bundle_info_with_http_info(bundle_id, opts)
      data
    end

    # Get uploaded upgrade bundle information
    # Get uploaded upgrade bundle information 
    # @param bundle_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpgradeBundleInfo, Fixnum, Hash)>] UpgradeBundleInfo data, response status code and response headers
    def get_upgrade_bundle_info_with_http_info(bundle_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUpgradeBundlesApi.get_upgrade_bundle_info ...'
      end
      # verify the required parameter 'bundle_id' is set
      if @api_client.config.client_side_validation && bundle_id.nil?
        fail ArgumentError, "Missing the required parameter 'bundle_id' when calling ManagementPlaneApiUpgradeBundlesApi.get_upgrade_bundle_info"
      end
      # resource path
      local_var_path = '/upgrade/bundles/{bundle-id}'.sub('{' + 'bundle-id' + '}', bundle_id.to_s)

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
        :return_type => 'UpgradeBundleInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUpgradeBundlesApi#get_upgrade_bundle_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get uploaded upgrade bundle upload status
    # Get uploaded upgrade bundle upload status 
    # @param bundle_id 
    # @param [Hash] opts the optional parameters
    # @return [UpgradeBundleUploadStatus]
    def get_upgrade_bundle_upload_status(bundle_id, opts = {})
      data, _status_code, _headers = get_upgrade_bundle_upload_status_with_http_info(bundle_id, opts)
      data
    end

    # Get uploaded upgrade bundle upload status
    # Get uploaded upgrade bundle upload status 
    # @param bundle_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpgradeBundleUploadStatus, Fixnum, Hash)>] UpgradeBundleUploadStatus data, response status code and response headers
    def get_upgrade_bundle_upload_status_with_http_info(bundle_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUpgradeBundlesApi.get_upgrade_bundle_upload_status ...'
      end
      # verify the required parameter 'bundle_id' is set
      if @api_client.config.client_side_validation && bundle_id.nil?
        fail ArgumentError, "Missing the required parameter 'bundle_id' when calling ManagementPlaneApiUpgradeBundlesApi.get_upgrade_bundle_upload_status"
      end
      # resource path
      local_var_path = '/upgrade/bundles/{bundle-id}/upload-status'.sub('{' + 'bundle-id' + '}', bundle_id.to_s)

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
        :return_type => 'UpgradeBundleUploadStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUpgradeBundlesApi#get_upgrade_bundle_upload_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Upload upgrade bundle
    # Upload the upgrade bundle. This call returns after upload is completed. You can check bundle processing status periodically by retrieving upgrade bundle upload status to find out if the upload and processing is completed. 
    # @param file Upgrade bundle file
    # @param [Hash] opts the optional parameters
    # @return [UpgradeBundleId]
    def upload_upgrade_bundle_async_upload(file, opts = {})
      data, _status_code, _headers = upload_upgrade_bundle_async_upload_with_http_info(file, opts)
      data
    end

    # Upload upgrade bundle
    # Upload the upgrade bundle. This call returns after upload is completed. You can check bundle processing status periodically by retrieving upgrade bundle upload status to find out if the upload and processing is completed. 
    # @param file Upgrade bundle file
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpgradeBundleId, Fixnum, Hash)>] UpgradeBundleId data, response status code and response headers
    def upload_upgrade_bundle_async_upload_with_http_info(file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUpgradeBundlesApi.upload_upgrade_bundle_async_upload ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling ManagementPlaneApiUpgradeBundlesApi.upload_upgrade_bundle_async_upload"
      end
      # resource path
      local_var_path = '/upgrade/bundles?action=upload'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params['file'] = file

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UpgradeBundleId')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUpgradeBundlesApi#upload_upgrade_bundle_async_upload\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end