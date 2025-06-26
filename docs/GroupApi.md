# GroupApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDGroupGet**](GroupApi.md#v1AccountAccountIDGroupGet) | **GET** /v1/account/{accountID}/group | Get Group List
[**v1AccountAccountIDGroupGroupIDDelete**](GroupApi.md#v1AccountAccountIDGroupGroupIDDelete) | **DELETE** /v1/account/{accountID}/group/{groupID} | Delete Group
[**v1AccountAccountIDGroupGroupIDGet**](GroupApi.md#v1AccountAccountIDGroupGroupIDGet) | **GET** /v1/account/{accountID}/group/{groupID} | Get Group Details
[**v1AccountAccountIDGroupGroupIDPut**](GroupApi.md#v1AccountAccountIDGroupGroupIDPut) | **PUT** /v1/account/{accountID}/group/{groupID} | Update Group
[**v1AccountAccountIDGroupPost**](GroupApi.md#v1AccountAccountIDGroupPost) | **POST** /v1/account/{accountID}/group | Create Group



## v1AccountAccountIDGroupGet

Get Group List

Get a list of groups associated with an account.

### Example

```bash
 v1AccountAccountIDGroupGet accountID=value  start_key=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **startKey** | **string** | start_key for pagination that was returned as next_start_key from your previous call | [optional] [default to null]
 **pageSize** | **integer** | number of records to return, range 1 to 50 | [optional] [default to null]

### Return type

[**ServiceDocGroupGetAll**](ServiceDocGroupGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDGroupGroupIDDelete

Delete Group

Delete a call group in an account.

### Example

```bash
 v1AccountAccountIDGroupGroupIDDelete accountID=value groupID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **groupID** | **string** | group ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocGroupGetSingle**](ServiceDocGroupGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDGroupGroupIDGet

Get Group Details

Access details about a single group within an account.

### Example

```bash
 v1AccountAccountIDGroupGroupIDGet accountID=value groupID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **groupID** | **string** | Group ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocGroupGetSingle**](ServiceDocGroupGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDGroupGroupIDPut

Update Group

Modify the name, settings and other information for a group within an account.

### Example

```bash
 v1AccountAccountIDGroupGroupIDPut accountID=value groupID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **groupID** | **string** | Group ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceVOIPGroupAddEdit2**](ServiceVOIPGroupAddEdit2.md) | payload fields |

### Return type

[**ServiceDocGroupGetSingle**](ServiceDocGroupGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDGroupPost

Create Group

Provide an additional resource by adding a group list to an account.

### Example

```bash
 v1AccountAccountIDGroupPost accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID | [default to null]
 **group** | [**ServiceVOIPGroupAddEdit2**](ServiceVOIPGroupAddEdit2.md) | group fields |

### Return type

[**ServiceDocGroupGetSingle**](ServiceDocGroupGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

