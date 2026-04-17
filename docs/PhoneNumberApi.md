# PhoneNumberApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountidPhonenumberGet**](PhoneNumberApi.md#v1AccountAccountidPhonenumberGet) | **GET** /v1/account/{accountid}/phonenumber | Get Assigned Numbers List
[**v1AccountPhonenumberAssignPost**](PhoneNumberApi.md#v1AccountPhonenumberAssignPost) | **POST** /v1/account/phonenumber/assign | Assign Number
[**v1AccountPhonenumberDisconnectPost**](PhoneNumberApi.md#v1AccountPhonenumberDisconnectPost) | **POST** /v1/account/phonenumber/disconnect | Disconnect Number
[**v1AccountPhonenumberGet**](PhoneNumberApi.md#v1AccountPhonenumberGet) | **GET** /v1/account/phonenumber | Get Unassigned Numbers List
[**v1AccountPhonenumberPost**](PhoneNumberApi.md#v1AccountPhonenumberPost) | **POST** /v1/account/phonenumber | Purchase Number
[**v1AccountPhonenumberUnassignPost**](PhoneNumberApi.md#v1AccountPhonenumberUnassignPost) | **POST** /v1/account/phonenumber/unassign | Unassign Number
[**v1PhonenumberSearchGet**](PhoneNumberApi.md#v1PhonenumberSearchGet) | **GET** /v1/phonenumber/search | Search New Numbers



## v1AccountAccountidPhonenumberGet

Get Assigned Numbers List

Access all phone numbers assigned to a CPaaS account.

### Example

```bash
 v1AccountAccountidPhonenumberGet accountid=value  start_key=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **startKey** | **string** | Start key for pagination, obtained from previous responses | [optional] [default to null]
 **pageSize** | **integer** | Number of records to return per page (range: 1 to 50) | [optional] [default to null]

### Return type

[**ServiceDocsAccountPhonenumberGetAll**](ServiceDocsAccountPhonenumberGetAll.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountPhonenumberAssignPost

Assign Number

Assign a purchased phone number to an account.

### Example

```bash
 v1AccountPhonenumberAssignPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**ServiceDocsPhonenumberAssignPayload**](ServiceDocsPhonenumberAssignPayload.md) | assignment payload |

### Return type

[**ServiceAPIResponseStatusCodeOnly**](ServiceAPIResponseStatusCodeOnly.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountPhonenumberDisconnectPost

Disconnect Number

Disconnecting a phone number from a CPaaS account relinquishes ownership of the number back to the carrier.

### Example

```bash
 v1AccountPhonenumberDisconnectPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**ServiceDocsPhonenumberUnassignPayload**](ServiceDocsPhonenumberUnassignPayload.md) | disconnect payload |

### Return type

[**ServiceAPIResponseStatusCodeOnly**](ServiceAPIResponseStatusCodeOnly.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountPhonenumberGet

Get Unassigned Numbers List

Obtain all phone numbers that have not been assigned to a CPaaS account within your organization.

### Example

```bash
 v1AccountPhonenumberGet  start_key=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startKey** | **string** | Start key for pagination, obtained from previous responses | [optional] [default to null]
 **pageSize** | **integer** | Number of records to return per page (range: 1 to 50) | [optional] [default to null]

### Return type

[**ServiceDocsAccountPhonenumberGetAll**](ServiceDocsAccountPhonenumberGetAll.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountPhonenumberPost

Purchase Number

Purchase or activate a phone number for CPaaS accounts within your business.

### Example

```bash
 v1AccountPhonenumberPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phonenumber** | [**array[string]**](string.md) | phonenumber fields |

### Return type

[**ServiceDocsOrderPhonenumber**](ServiceDocsOrderPhonenumber.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountPhonenumberUnassignPost

Unassign Number

Remove a phone number from an account and place it back on the list of unassigned phone numbers.

### Example

```bash
 v1AccountPhonenumberUnassignPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**ServiceDocsPhonenumberUnassignPayload**](ServiceDocsPhonenumberUnassignPayload.md) | unassign payload |

### Return type

[**ServiceAPIResponseStatusCodeOnly**](ServiceAPIResponseStatusCodeOnly.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1PhonenumberSearchGet

Search New Numbers

Conduct a search for available phone numbers for purchase within an area code.

### Example

```bash
 v1PhonenumberSearchGet  area_code=value  quantity=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **areaCode** | **string** | Area code (exactly 3 numeric characters) example: 610 or 484 | [default to null]
 **quantity** | **integer** | Number of records to return (range: 1 to 100, defaults to 100 if not provided) | [optional] [default to 100]

### Return type

[**ServiceDocsPhonenumberSearchGetAll**](ServiceDocsPhonenumberSearchGetAll.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

