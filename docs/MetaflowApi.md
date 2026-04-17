# MetaflowApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDDeviceDeviceIDMetaflowDelete**](MetaflowApi.md#v1AccountAccountIDDeviceDeviceIDMetaflowDelete) | **DELETE** /v1/account/{accountID}/device/{deviceID}/metaflow | Delete Device Metaflow
[**v1AccountAccountIDDeviceDeviceIDMetaflowGet**](MetaflowApi.md#v1AccountAccountIDDeviceDeviceIDMetaflowGet) | **GET** /v1/account/{accountID}/device/{deviceID}/metaflow | Get Device Metaflow List
[**v1AccountAccountIDDeviceDeviceIDMetaflowPost**](MetaflowApi.md#v1AccountAccountIDDeviceDeviceIDMetaflowPost) | **POST** /v1/account/{accountID}/device/{deviceID}/metaflow | Create Device Metaflow
[**v1AccountAccountIDMetaflowDelete**](MetaflowApi.md#v1AccountAccountIDMetaflowDelete) | **DELETE** /v1/account/{accountID}/metaflow | Delete Account Metaflow
[**v1AccountAccountIDMetaflowGet**](MetaflowApi.md#v1AccountAccountIDMetaflowGet) | **GET** /v1/account/{accountID}/metaflow | Get Account Metaflow List
[**v1AccountAccountIDMetaflowPost**](MetaflowApi.md#v1AccountAccountIDMetaflowPost) | **POST** /v1/account/{accountID}/metaflow | Create Account Metaflow
[**v1AccountAccountIDUserUserIDMetaflowDelete**](MetaflowApi.md#v1AccountAccountIDUserUserIDMetaflowDelete) | **DELETE** /v1/account/{accountID}/user/{userID}/metaflow | Delete User Metaflow
[**v1AccountAccountIDUserUserIDMetaflowGet**](MetaflowApi.md#v1AccountAccountIDUserUserIDMetaflowGet) | **GET** /v1/account/{accountID}/user/{userID}/metaflow | Get User Metaflow List
[**v1AccountAccountIDUserUserIDMetaflowPost**](MetaflowApi.md#v1AccountAccountIDUserUserIDMetaflowPost) | **POST** /v1/account/{accountID}/user/{userID}/metaflow | Create User Metaflow



## v1AccountAccountIDDeviceDeviceIDMetaflowDelete

Delete Device Metaflow

Delete all metaflows associated with a device.

### Example

```bash
 v1AccountAccountIDDeviceDeviceIDMetaflowDelete accountID=value deviceID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **deviceID** | **string** | Device ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDDeviceDeviceIDMetaflowGet

Get Device Metaflow List

Get the list of metaflows for a device.

### Example

```bash
 v1AccountAccountIDDeviceDeviceIDMetaflowGet accountID=value deviceID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **deviceID** | **string** | Device ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDDeviceDeviceIDMetaflowPost

Create Device Metaflow

Create a metaflow or multiple metaflows for a device.

### Example

```bash
 v1AccountAccountIDDeviceDeviceIDMetaflowPost accountID=value deviceID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **deviceID** | **string** | Device ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceVOIPMetaflowAddData**](ServiceVOIPMetaflowAddData.md) | payload fields |

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDMetaflowDelete

Delete Account Metaflow

Remove all metaflows from an account.

### Example

```bash
 v1AccountAccountIDMetaflowDelete accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDMetaflowGet

Get Account Metaflow List

Get an account's metaflow list.

### Example

```bash
 v1AccountAccountIDMetaflowGet accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDMetaflowPost

Create Account Metaflow

Generate a metaflow for an account.

### Example

```bash
 v1AccountAccountIDMetaflowPost accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID | [default to null]
 **metaflow** | [**ServiceVOIPMetaflowAddData**](ServiceVOIPMetaflowAddData.md) | Metaflow fields |

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDUserUserIDMetaflowDelete

Delete User Metaflow

Delete all metaflows associated with a user.

### Example

```bash
 v1AccountAccountIDUserUserIDMetaflowDelete accountID=value userID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **userID** | **string** | user ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDUserUserIDMetaflowGet

Get User Metaflow List

Get the list of metaflows for a user.

### Example

```bash
 v1AccountAccountIDUserUserIDMetaflowGet accountID=value userID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **userID** | **string** | user ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDUserUserIDMetaflowPost

Create User Metaflow

Add a metaflow or multiple metaflows for a user in an account.

### Example

```bash
 v1AccountAccountIDUserUserIDMetaflowPost accountID=value userID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **userID** | **string** | user ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceVOIPMetaflowAddData**](ServiceVOIPMetaflowAddData.md) | payload fields |

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

