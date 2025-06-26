# TemporalRuleApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDTemporalruleGet**](TemporalRuleApi.md#v1AccountAccountIDTemporalruleGet) | **GET** /v1/account/{accountID}/temporalrule | Get Temporal Rule List
[**v1AccountAccountIDTemporalrulePost**](TemporalRuleApi.md#v1AccountAccountIDTemporalrulePost) | **POST** /v1/account/{accountID}/temporalrule | Create Temporal Rule
[**v1AccountAccountIDTemporalruleTemporalRuleIDDelete**](TemporalRuleApi.md#v1AccountAccountIDTemporalruleTemporalRuleIDDelete) | **DELETE** /v1/account/{accountID}/temporalrule/{temporalRuleID} | Delete Temporal Rule
[**v1AccountAccountIDTemporalruleTemporalRuleIDGet**](TemporalRuleApi.md#v1AccountAccountIDTemporalruleTemporalRuleIDGet) | **GET** /v1/account/{accountID}/temporalrule/{temporalRuleID} | Get Temporal Rule Details
[**v1AccountAccountIDTemporalruleTemporalRuleIDPut**](TemporalRuleApi.md#v1AccountAccountIDTemporalruleTemporalRuleIDPut) | **PUT** /v1/account/{accountID}/temporalrule/{temporalRuleID} | Update Temporal Rule



## v1AccountAccountIDTemporalruleGet

Get Temporal Rule List

Access all temporal rules for an account.

### Example

```bash
 v1AccountAccountIDTemporalruleGet accountID=value  start_key=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **startKey** | **string** | start_key for pagination that was returned as next_start_key from your previous call | [optional] [default to null]
 **pageSize** | **integer** | number of records to return, range 1 to 50 | [optional] [default to null]

### Return type

[**ServiceDocsTemporalRuleGetAll**](ServiceDocsTemporalRuleGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDTemporalrulePost

Create Temporal Rule

Create temporal rules for an account.

### Example

```bash
 v1AccountAccountIDTemporalrulePost accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alphanumeric | [default to null]
 **temporalrule** | [**ServiceVOIPTemporalRuleAddEdit2**](ServiceVOIPTemporalRuleAddEdit2.md) | payload fields |

### Return type

[**ServiceDocsTemporalRuleGetSingle**](ServiceDocsTemporalRuleGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDTemporalruleTemporalRuleIDDelete

Delete Temporal Rule

Remove a temporal rule from an account.

### Example

```bash
 v1AccountAccountIDTemporalruleTemporalRuleIDDelete accountID=value temporalRuleID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **temporalRuleID** | **string** | temporal rule ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsTemporalRuleGetSingle**](ServiceDocsTemporalRuleGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDTemporalruleTemporalRuleIDGet

Get Temporal Rule Details

View details about individual time rules.

### Example

```bash
 v1AccountAccountIDTemporalruleTemporalRuleIDGet accountID=value temporalRuleID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **temporalRuleID** | **string** | Temporal Rule ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsTemporalRuleGetSingle**](ServiceDocsTemporalRuleGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDTemporalruleTemporalRuleIDPut

Update Temporal Rule

Edit the existing temporal rules in an account.

### Example

```bash
 v1AccountAccountIDTemporalruleTemporalRuleIDPut accountID=value temporalRuleID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **temporalRuleID** | **string** | Temporal Rule ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceVOIPTemporalRuleAddEdit2**](ServiceVOIPTemporalRuleAddEdit2.md) | payload fields |

### Return type

[**ServiceDocsTemporalRuleGetSingle**](ServiceDocsTemporalRuleGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

