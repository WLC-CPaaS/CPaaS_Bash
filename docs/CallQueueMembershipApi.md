# CallQueueMembershipApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDQueuemembershipPost**](CallQueueMembershipApi.md#v1AccountAccountIDQueuemembershipPost) | **POST** /v1/account/{accountID}/queuemembership | Grant Queue Membership to User
[**v1AccountAccountIDQueuemembershipRecipientIDDisablePost**](CallQueueMembershipApi.md#v1AccountAccountIDQueuemembershipRecipientIDDisablePost) | **POST** /v1/account/{accountID}/queuemembership/{recipientID}/disable | Disable Queue Membership
[**v1AccountAccountIDQueuemembershipRecipientIDEnablePost**](CallQueueMembershipApi.md#v1AccountAccountIDQueuemembershipRecipientIDEnablePost) | **POST** /v1/account/{accountID}/queuemembership/{recipientID}/enable | Enable Queue Membership



## v1AccountAccountIDQueuemembershipPost

Grant Queue Membership to User

Allow users to create queue memberships for recipients.

### Example

```bash
 v1AccountAccountIDQueuemembershipPost accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceVOIPQueueMembershipAddData**](ServiceVOIPQueueMembershipAddData.md) | payload fields |

### Return type

[**ServiceDocsQueueMembershipOutput**](ServiceDocsQueueMembershipOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDQueuemembershipRecipientIDDisablePost

Disable Queue Membership

Deactivate queue membership for a recipient.

### Example

```bash
 v1AccountAccountIDQueuemembershipRecipientIDDisablePost accountID=value recipientID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **recipientID** | **string** | Recipient ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDQueuemembershipRecipientIDEnablePost

Enable Queue Membership

Activate queue membership for a recipient.

### Example

```bash
 v1AccountAccountIDQueuemembershipRecipientIDEnablePost accountID=value recipientID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **recipientID** | **string** | Recipient ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceVOIPCallQueueEnableMembershipData**](ServiceVOIPCallQueueEnableMembershipData.md) | payload fields |

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

