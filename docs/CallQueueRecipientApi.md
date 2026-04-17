# CallQueueRecipientApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDLoginrecipientRecipientIDPost**](CallQueueRecipientApi.md#v1AccountAccountIDLoginrecipientRecipientIDPost) | **POST** /v1/account/{accountID}/loginrecipient/{recipientID} | Login as Recipient
[**v1AccountAccountIDQueuerecipientGet**](CallQueueRecipientApi.md#v1AccountAccountIDQueuerecipientGet) | **GET** /v1/account/{accountID}/queuerecipient | Change Recipient Status
[**v1AccountAccountIDRecipientRecipientIDStatusPost**](CallQueueRecipientApi.md#v1AccountAccountIDRecipientRecipientIDStatusPost) | **POST** /v1/account/{accountID}/recipient/{recipientID}/status | Get Recipient List



## v1AccountAccountIDLoginrecipientRecipientIDPost

Login as Recipient

Agents must log in to receive calls. Depending on their membership, they can log in to one or more queues. (If an agent is a member of more than one queue, they will receive calls from all the queues they are a part of.)

### Example

```bash
 v1AccountAccountIDLoginrecipientRecipientIDPost accountID=value recipientID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **recipientID** | **string** | Recipient ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceVOIPCallQueueRecipientLoginLogoutData**](ServiceVOIPCallQueueRecipientLoginLogoutData.md) | payload fields |

### Return type

[**ServiceDocsCallQueueRecipientLoginLogoutOutput**](ServiceDocsCallQueueRecipientLoginLogoutOutput.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDQueuerecipientGet

Change Recipient Status

Get a list of all recipients in an account.

### Example

```bash
 v1AccountAccountIDQueuerecipientGet accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsGetQueueRecipients**](ServiceDocsGetQueueRecipients.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDRecipientRecipientIDStatusPost

Get Recipient List

Change the status of a recipient to ready, away, etc.

### Example

```bash
 v1AccountAccountIDRecipientRecipientIDStatusPost accountID=value recipientID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **recipientID** | **string** | Recipient ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceVOIPCallQueueRecipientStatusData**](ServiceVOIPCallQueueRecipientStatusData.md) | payload fields |

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[bearerauth](../README.md#bearerauth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

