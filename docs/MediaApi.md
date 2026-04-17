# MediaApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDMediaMediaIDFileGet**](MediaApi.md#v1AccountAccountIDMediaMediaIDFileGet) | **GET** /v1/account/{accountID}/media/{mediaID}/file | Get Media File
[**v1AccountAccountIDMediaMediaIDFilePost**](MediaApi.md#v1AccountAccountIDMediaMediaIDFilePost) | **POST** /v1/account/{accountID}/media/{mediaID}/file | Add Media File
[**v1AccountAccountidMediaGet**](MediaApi.md#v1AccountAccountidMediaGet) | **GET** /v1/account/{accountid}/media | Get Media List
[**v1AccountAccountidMediaMediaidDelete**](MediaApi.md#v1AccountAccountidMediaMediaidDelete) | **DELETE** /v1/account/{accountid}/media/{mediaid} | Delete Media
[**v1AccountAccountidMediaMediaidGet**](MediaApi.md#v1AccountAccountidMediaMediaidGet) | **GET** /v1/account/{accountid}/media/{mediaid} | Get Media Details
[**v1AccountAccountidMediaPost**](MediaApi.md#v1AccountAccountidMediaPost) | **POST** /v1/account/{accountid}/media | Create Media



## v1AccountAccountIDMediaMediaIDFileGet

Get Media File

Gather data about the media objects in an account.

### Example

```bash
 v1AccountAccountIDMediaMediaIDFileGet accountID=value mediaID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **mediaID** | **string** | Media ID, 32 alpha numeric | [default to null]

### Return type

**binary**

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, audio/mp3, audio/mpeg, audio/mpeg3, audio/x-wav, audio/wav, audio/ogg, video/x-flv, video/h264, video/mpeg, video/quicktime, video/mp4, video/webm

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDMediaMediaIDFilePost

Add Media File

Include a media file that is connected to a media object in an account.

### Example

```bash
 v1AccountAccountIDMediaMediaIDFilePost accountID=value mediaID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **mediaID** | **string** | Media ID, 32 alpha numeric | [default to null]
 **file** | **binary** | Media file | [default to null]

### Return type

[**ServiceDocsMediaGetSingle**](ServiceDocsMediaGetSingle.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidMediaGet

Get Media List

View all media files for an account in your organization.

### Example

```bash
 v1AccountAccountidMediaGet accountid=value  start_key=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **startKey** | **string** | start_key for pagination that was returned as next_start_key from your previous call | [optional] [default to null]
 **pageSize** | **integer** | number of records to return, range 1 to 50 | [optional] [default to null]

### Return type

[**ServiceDocsMediaGetAll**](ServiceDocsMediaGetAll.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidMediaMediaidDelete

Delete Media

Remove a media file that is no longer in use from an account.

### Example

```bash
 v1AccountAccountidMediaMediaidDelete accountid=value mediaid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **mediaid** | **string** | Device ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsMediaGetSingle**](ServiceDocsMediaGetSingle.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidMediaMediaidGet

Get Media Details

Permit users to view an account's specific media information.

### Example

```bash
 v1AccountAccountidMediaMediaidGet accountid=value mediaid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **mediaid** | **string** | Media ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsMediaGetSingle**](ServiceDocsMediaGetSingle.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidMediaPost

Create Media

Generate a media object to allow users to upload a media file in an account.

### Example

```bash
 v1AccountAccountidMediaPost accountid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **media** | [**ServiceVOIPMediaAddEditData**](ServiceVOIPMediaAddEditData.md) | Media creation or update payload |

### Return type

[**ServiceDocsMediaGetSingle**](ServiceDocsMediaGetSingle.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

