# CallRecordingApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDRecordingGet**](CallRecordingApi.md#v1AccountAccountIDRecordingGet) | **GET** /v1/account/{accountID}/recording | Get Account Call Recording
[**v1AccountAccountIDRecordingRecordingIDDelete**](CallRecordingApi.md#v1AccountAccountIDRecordingRecordingIDDelete) | **DELETE** /v1/account/{accountID}/recording/{recordingID} | Delete Call Recording
[**v1AccountAccountIDRecordingRecordingIDGet**](CallRecordingApi.md#v1AccountAccountIDRecordingRecordingIDGet) | **GET** /v1/account/{accountID}/recording/{recordingID} | Get Call Recording Details
[**v1AccountAccountIDUserUserIDRecordingGet**](CallRecordingApi.md#v1AccountAccountIDUserUserIDRecordingGet) | **GET** /v1/account/{accountID}/user/{userID}/recording | Get User Call Recording



## v1AccountAccountIDRecordingGet

Get Account Call Recording

Obtain a list of the call recordings within an account.

### Example

```bash
 v1AccountAccountIDRecordingGet accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsCallRecordingGetAll**](ServiceDocsCallRecordingGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDRecordingRecordingIDDelete

Delete Call Recording

Delete a single call recording from an account.

### Example

```bash
 v1AccountAccountIDRecordingRecordingIDDelete accountID=value recordingID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **recordingID** | **string** | Recording ID, 39 (yyyymm-<32 id>) | [default to null]

### Return type

[**ServiceDocsCallRecordingGetSingle**](ServiceDocsCallRecordingGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDRecordingRecordingIDGet

Get Call Recording Details

Access details for each recorded call in an account (e.g., duration, names and numbers of call participants, etc.).

### Example

```bash
 v1AccountAccountIDRecordingRecordingIDGet accountID=value recordingID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **recordingID** | **string** | Recording ID, 39 (yyyymm-<32 id>) | [default to null]

### Return type

[**ServiceDocsCallRecordingGetSingle**](ServiceDocsCallRecordingGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, audio/mp3, audio/mpeg, audio/mpeg3, audio/x-wav, audio/wav

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDUserUserIDRecordingGet

Get User Call Recording

Retrieve a list of call recordings for a user within an account.

### Example

```bash
 v1AccountAccountIDUserUserIDRecordingGet accountID=value userID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **userID** | **string** | User ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsCallRecordingGetAll**](ServiceDocsCallRecordingGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

