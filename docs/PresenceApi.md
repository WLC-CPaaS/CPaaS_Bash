# PresenceApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDPresenceExtensionPut**](PresenceApi.md#v1AccountAccountIDPresenceExtensionPut) | **PUT** /v1/account/{accountID}/presence/{extension} | Set/Reset Presence for Extension
[**v1AccountAccountIDPresenceGet**](PresenceApi.md#v1AccountAccountIDPresenceGet) | **GET** /v1/account/{accountID}/presence | Get Presence Details
[**v1AccountAccountIDUserUserIDPresencePut**](PresenceApi.md#v1AccountAccountIDUserUserIDPresencePut) | **PUT** /v1/account/{accountID}/user/{userID}/presence | Set/Reset Presence for User



## v1AccountAccountIDPresenceExtensionPut

Set/Reset Presence for Extension

Set or reset the presence status of an extension.

### Example

```bash
 v1AccountAccountIDPresenceExtensionPut accountID=value extension=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **extension** | **string** | Extension | [default to null]
 **reqBody** | [**ServiceVOIPPresenceSetResetEditData**](ServiceVOIPPresenceSetResetEditData.md) | payload fields |

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDPresenceGet

Get Presence Details

Retrieve details of presence subscriptions in an account.

### Example

```bash
 v1AccountAccountIDPresenceGet accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsPresenceGet**](ServiceDocsPresenceGet.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDUserUserIDPresencePut

Set/Reset Presence for User

Set or reset the presence status of a user within an account.

### Example

```bash
 v1AccountAccountIDUserUserIDPresencePut accountID=value userID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **userID** | **string** | User ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceVOIPPresenceSetResetEditData**](ServiceVOIPPresenceSetResetEditData.md) | payload fields |

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

