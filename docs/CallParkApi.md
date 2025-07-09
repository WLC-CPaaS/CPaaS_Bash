# CallParkApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDParkedcallGet**](CallParkApi.md#v1AccountAccountIDParkedcallGet) | **GET** /v1/account/{accountID}/parkedcall | Get Call Park List



## v1AccountAccountIDParkedcallGet

Get Call Park List

Retrieve a list of calls parked on hold in a numbered slot.

### Example

```bash
 v1AccountAccountIDParkedcallGet accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsCallparkGet**](ServiceDocsCallparkGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

