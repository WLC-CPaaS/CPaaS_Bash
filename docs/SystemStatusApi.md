# SystemStatusApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ApPingGet**](SystemStatusApi.md#v1ApPingGet) | **GET** /v1/ap/ping | Provisioning Ping
[**v1PingGet**](SystemStatusApi.md#v1PingGet) | **GET** /v1/ping | Ping Backend
[**v1PingseccognitoGet**](SystemStatusApi.md#v1PingseccognitoGet) | **GET** /v1/pingseccognito | Ping Cognito
[**v1SystemStatusGet**](SystemStatusApi.md#v1SystemStatusGet) | **GET** /v1/system_status | Get System Status



## v1ApPingGet

Provisioning Ping

Ping the provisioning service.

### Example

```bash
 v1ApPingGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProvisioningDocsDocsPingOutput**](ProvisioningDocsDocsPingOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1PingGet

Ping Backend

Get the ping message.

### Example

```bash
 v1PingGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ServiceDocsPingGet**](ServiceDocsPingGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1PingseccognitoGet

Ping Cognito

Get a secure ping message.

### Example

```bash
 v1PingseccognitoGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ServiceDocsPingGet**](ServiceDocsPingGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1SystemStatusGet

Get System Status

Get the system status.

### Example

```bash
 v1SystemStatusGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ServiceDocsSystemStatusGetSingle**](ServiceDocsSystemStatusGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

