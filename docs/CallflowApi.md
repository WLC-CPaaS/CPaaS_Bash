# CallflowApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDCallflowCallflowIDDelete**](CallflowApi.md#v1AccountAccountIDCallflowCallflowIDDelete) | **DELETE** /v1/account/{accountID}/callflow/{callflowID} | Delete Call Group
[**v1AccountAccountIDCallflowCallflowIDGet**](CallflowApi.md#v1AccountAccountIDCallflowCallflowIDGet) | **GET** /v1/account/{accountID}/callflow/{callflowID} | Get Call Group Details
[**v1AccountAccountIDCallflowCallflowIDPut**](CallflowApi.md#v1AccountAccountIDCallflowCallflowIDPut) | **PUT** /v1/account/{accountID}/callflow/{callflowID} | Update Call Group
[**v1AccountAccountIDCallflowGet**](CallflowApi.md#v1AccountAccountIDCallflowGet) | **GET** /v1/account/{accountID}/callflow | Get Callflow List
[**v1AccountAccountIDCallflowPost**](CallflowApi.md#v1AccountAccountIDCallflowPost) | **POST** /v1/account/{accountID}/callflow | Create Call Group



## v1AccountAccountIDCallflowCallflowIDDelete

Delete Call Group

Delete a callflow in an account.

### Example

```bash
 v1AccountAccountIDCallflowCallflowIDDelete accountID=value callflowID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **callflowID** | **string** | callflow ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsCallflowGetSingle**](ServiceDocsCallflowGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDCallflowCallflowIDGet

Get Call Group Details

Get the details for a single callflow in an account.

### Example

```bash
 v1AccountAccountIDCallflowCallflowIDGet accountID=value callflowID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **callflowID** | **string** | Callflow ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsCallflowGetSingle**](ServiceDocsCallflowGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDCallflowCallflowIDPut

Update Call Group

Update the details for a single callflow in an account.

### Example

```bash
 v1AccountAccountIDCallflowCallflowIDPut accountID=value callflowID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **callflowID** | **string** | Callflow ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceCallflowAddEditData**](ServiceCallflowAddEditData.md) | payload fields |

### Return type

[**ServiceDocsCallflowGetSingle**](ServiceDocsCallflowGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDCallflowGet

Get Callflow List

Permit a user to view the callflow details in an account.

### Example

```bash
 v1AccountAccountIDCallflowGet accountID=value  start_key=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **startKey** | **string** | start_key for pagination that was returned as next_start_key from your previous call | [optional] [default to null]
 **pageSize** | **integer** | number of records to return, range 1 to 50 | [optional] [default to null]

### Return type

[**ServiceDocsCallflowGetAll**](ServiceDocsCallflowGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDCallflowPost

Create Call Group

Create instructions for routing a call to a user or system.

### Example

```bash
 v1AccountAccountIDCallflowPost accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha-numeric | [default to null]
 **request** | [**ServiceCallflowAddEditData**](ServiceCallflowAddEditData.md) | Call flow configuration |

### Return type

[**ServiceDocsCallflowGetSingle**](ServiceDocsCallflowGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

