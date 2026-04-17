# WebhookApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1WebhookAccountAccountIDGet**](WebhookApi.md#v1WebhookAccountAccountIDGet) | **GET** /v1/webhook/account/{accountID} | Get Webhook List
[**v1WebhookAccountAccountIDPost**](WebhookApi.md#v1WebhookAccountAccountIDPost) | **POST** /v1/webhook/account/{accountID} | Create Webhook
[**v1WebhookAccountAccountIDWebhookIDDelete**](WebhookApi.md#v1WebhookAccountAccountIDWebhookIDDelete) | **DELETE** /v1/webhook/account/{accountID}/{webhookID} | Delete Webhook
[**v1WebhookAccountAccountIDWebhookIDGet**](WebhookApi.md#v1WebhookAccountAccountIDWebhookIDGet) | **GET** /v1/webhook/account/{accountID}/{webhookID} | Get Webhook Details
[**v1WebhookAccountAccountIDWebhookIDPut**](WebhookApi.md#v1WebhookAccountAccountIDWebhookIDPut) | **PUT** /v1/webhook/account/{accountID}/{webhookID} | Update Webhook



## v1WebhookAccountAccountIDGet

Get Webhook List

Retrieve the webhook list in an account.

### Example

```bash
 v1WebhookAccountAccountIDGet accountID=value  page_size=value  current_page=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID | [default to null]
 **pageSize** | **integer** | number of records to return, range 1 to 50 | [optional] [default to null]
 **currentPage** | **integer** | Current Page | [optional] [default to null]

### Return type

[**ServiceDocsWebhookGetAll**](ServiceDocsWebhookGetAll.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1WebhookAccountAccountIDPost

Create Webhook

Create a webhook for a specific account ID.

### Example

```bash
 v1WebhookAccountAccountIDPost accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID | [default to null]
 **body** | [**ServiceWebhookAdd**](ServiceWebhookAdd.md) | Webhook data |

### Return type

[**ServiceDocsWebhookGetSingle**](ServiceDocsWebhookGetSingle.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1WebhookAccountAccountIDWebhookIDDelete

Delete Webhook

Remove a webhook identified by its ID for a particular account ID.

### Example

```bash
 v1WebhookAccountAccountIDWebhookIDDelete accountID=value webhookID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID | [default to null]
 **webhookID** | **integer** | Webhook ID | [default to null]

### Return type

[**ServiceDocsWebhookDelete**](ServiceDocsWebhookDelete.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1WebhookAccountAccountIDWebhookIDGet

Get Webhook Details

Access details about a single webhook ID for an individual account ID.

### Example

```bash
 v1WebhookAccountAccountIDWebhookIDGet accountID=value webhookID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID | [default to null]
 **webhookID** | **integer** | Webhook ID | [default to null]

### Return type

[**ServiceDocsWebhookGetSingle**](ServiceDocsWebhookGetSingle.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1WebhookAccountAccountIDWebhookIDPut

Update Webhook

Update a webhook identified by its ID for a distinct account ID.

### Example

```bash
 v1WebhookAccountAccountIDWebhookIDPut accountID=value webhookID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID | [default to null]
 **webhookID** | **string** | Webhook ID | [default to null]
 **body** | [**ServiceWebhookEdit**](ServiceWebhookEdit.md) | Updated webhook data |

### Return type

[**ServiceDocsWebhookGetSingle**](ServiceDocsWebhookGetSingle.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

