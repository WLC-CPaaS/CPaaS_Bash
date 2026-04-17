# StorageApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDStorageDelete**](StorageApi.md#v1AccountAccountIDStorageDelete) | **DELETE** /v1/account/{accountID}/storage | Delete Storage
[**v1AccountAccountIDStorageGet**](StorageApi.md#v1AccountAccountIDStorageGet) | **GET** /v1/account/{accountID}/storage | Get Storage Details
[**v1AccountAccountIDStoragePost**](StorageApi.md#v1AccountAccountIDStoragePost) | **POST** /v1/account/{accountID}/storage | Create Storage
[**v1AccountAccountIDStoragePut**](StorageApi.md#v1AccountAccountIDStoragePut) | **PUT** /v1/account/{accountID}/storage | Update Storage



## v1AccountAccountIDStorageDelete

Delete Storage

Delete items that are stored in an account.

### Example

```bash
 v1AccountAccountIDStorageDelete accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsStorageGet**](ServiceDocsStorageGet.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDStorageGet

Get Storage Details

Retrieve storage details for an account.

### Example

```bash
 v1AccountAccountIDStorageGet accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsStorageGet**](ServiceDocsStorageGet.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDStoragePost

Create Storage

Create storage in an account for voicemails, call recordings, faxes, etc.

### Example

```bash
 v1AccountAccountIDStoragePost accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceVOIPStorageAddEditData**](ServiceVOIPStorageAddEditData.md) | payload fields |

### Return type

[**ServiceDocsStorageGet**](ServiceDocsStorageGet.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDStoragePut

Update Storage

Modify the names of metadata to make it easier to locate (e.g., change the name of voicemail_storage to voicemail_and_callrecordings_storage, etc.).

### Example

```bash
 v1AccountAccountIDStoragePut accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceVOIPStorageAddEditData**](ServiceVOIPStorageAddEditData.md) | payload fields |

### Return type

[**ServiceDocsStorageGet**](ServiceDocsStorageGet.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

