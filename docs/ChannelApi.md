# ChannelApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDChannelChannelIDGet**](ChannelApi.md#v1AccountAccountIDChannelChannelIDGet) | **GET** /v1/account/{accountID}/channel/{channelID} | Get Channel Details
[**v1AccountAccountIDChannelChannelIDPost**](ChannelApi.md#v1AccountAccountIDChannelChannelIDPost) | **POST** /v1/account/{accountID}/channel/{channelID} | Associate Action to Channel
[**v1AccountAccountIDChannelChannelIDPut**](ChannelApi.md#v1AccountAccountIDChannelChannelIDPut) | **PUT** /v1/account/{accountID}/channel/{channelID} | Associate Metaflow to Channel
[**v1AccountAccountIDChannelGet**](ChannelApi.md#v1AccountAccountIDChannelGet) | **GET** /v1/account/{accountID}/channel | Get Account Channel List
[**v1AccountAccountIDDeviceDeviceIDChannelGet**](ChannelApi.md#v1AccountAccountIDDeviceDeviceIDChannelGet) | **GET** /v1/account/{accountID}/device/{deviceID}/channel | Get Device Channel List
[**v1AccountAccountIDUserUserIDChannelGet**](ChannelApi.md#v1AccountAccountIDUserUserIDChannelGet) | **GET** /v1/account/{accountID}/user/{userID}/channel | Get User Channel List



## v1AccountAccountIDChannelChannelIDGet

Get Channel Details

Access details about each channel in an account.

### Example

```bash
 v1AccountAccountIDChannelChannelIDGet accountID=value channelID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **channelID** | **string** | Channel ID | [default to null]

### Return type

[**ServiceDocsChannelGetSingle**](ServiceDocsChannelGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDChannelChannelIDPost

Associate Action to Channel

Link an action, such as transfer or hangup to a channel.

### Example

```bash
 v1AccountAccountIDChannelChannelIDPost accountID=value channelID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **channelID** | **string** | Channel ID | [default to null]
 **reqBody** | [**ServiceVOIPChannelRunActionData**](ServiceVOIPChannelRunActionData.md) | payload fields |

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDChannelChannelIDPut

Associate Metaflow to Channel

Link a metaflow to an active channel.

### Example

```bash
 v1AccountAccountIDChannelChannelIDPut accountID=value channelID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **channelID** | **string** | Channel ID | [default to null]
 **reqBody** | [**ServiceVOIPChannelRunMetaflowData**](ServiceVOIPChannelRunMetaflowData.md) | payload fields |

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDChannelGet

Get Account Channel List

Get a list of active channels for an account.

### Example

```bash
 v1AccountAccountIDChannelGet accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsChannelGetAll**](ServiceDocsChannelGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDDeviceDeviceIDChannelGet

Get Device Channel List

Get the list of active channels for a device.

### Example

```bash
 v1AccountAccountIDDeviceDeviceIDChannelGet accountID=value deviceID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **deviceID** | **string** | Device ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsChannelGetAll**](ServiceDocsChannelGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDUserUserIDChannelGet

Get User Channel List

Get the list of active channels for a user.

### Example

```bash
 v1AccountAccountIDUserUserIDChannelGet accountID=value userID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **userID** | **string** | User ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsChannelGetAll**](ServiceDocsChannelGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

