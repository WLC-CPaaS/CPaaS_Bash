# MenuApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDMenuGet**](MenuApi.md#v1AccountAccountIDMenuGet) | **GET** /v1/account/{accountID}/menu | Get Menu List
[**v1AccountAccountIDMenuMenuIDDelete**](MenuApi.md#v1AccountAccountIDMenuMenuIDDelete) | **DELETE** /v1/account/{accountID}/menu/{menuID} | Delete Menu
[**v1AccountAccountIDMenuMenuIDGet**](MenuApi.md#v1AccountAccountIDMenuMenuIDGet) | **GET** /v1/account/{accountID}/menu/{menuID} | Get Menu Details
[**v1AccountAccountIDMenuMenuIDPut**](MenuApi.md#v1AccountAccountIDMenuMenuIDPut) | **PUT** /v1/account/{accountID}/menu/{menuID} | Update Menu
[**v1AccountAccountIDMenuPost**](MenuApi.md#v1AccountAccountIDMenuPost) | **POST** /v1/account/{accountID}/menu | Create Menu



## v1AccountAccountIDMenuGet

Get Menu List

Users can access data about all menus in an account.

### Example

```bash
 v1AccountAccountIDMenuGet accountID=value  start_key=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **startKey** | **string** | start_key for pagination that was returned as next_start_key from your previous call | [optional] [default to null]
 **pageSize** | **integer** | number of records to return, range 1 to 50 | [optional] [default to null]

### Return type

[**MenuOutputList**](MenuOutputList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDMenuMenuIDDelete

Delete Menu

Delete a menu from an account.

### Example

```bash
 v1AccountAccountIDMenuMenuIDDelete accountID=value menuID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **menuID** | **string** | Menu ID, 32 alpha numeric | [default to null]

### Return type

[**MenuOutputDetail**](MenuOutputDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDMenuMenuIDGet

Get Menu Details

Get details about a menu in an account.

### Example

```bash
 v1AccountAccountIDMenuMenuIDGet accountID=value menuID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **menuID** | **string** | Menu ID, 32 alpha numeric | [default to null]

### Return type

[**MenuOutputDetail**](MenuOutputDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDMenuMenuIDPut

Update Menu

Edit an account menu.

### Example

```bash
 v1AccountAccountIDMenuMenuIDPut accountID=value menuID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **menuID** | **string** | Menu ID, 32 alpha numeric | [default to null]
 **reqBody** | [**MenuInputData**](MenuInputData.md) | payload fields |

### Return type

[**MenuOutputDetail**](MenuOutputDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDMenuPost

Create Menu

Create a new menu for an account.

### Example

```bash
 v1AccountAccountIDMenuPost accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alphanumeric | [default to null]
 **menu** | [**MenuInputData**](MenuInputData.md) | Menu data |

### Return type

[**MenuOutputDetail**](MenuOutputDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

