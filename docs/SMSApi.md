# SMSApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1SmsAccountAccountIDCampaignCampaignIDImportGet**](SMSApi.md#v1SmsAccountAccountIDCampaignCampaignIDImportGet) | **GET** /v1/sms/account/{accountID}/campaign/{campaignID}/import | 
[**v1SmsAccountAccountIDCampaignCampaignIDImportPost**](SMSApi.md#v1SmsAccountAccountIDCampaignCampaignIDImportPost) | **POST** /v1/sms/account/{accountID}/campaign/{campaignID}/import | 
[**v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet**](SMSApi.md#v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet) | **GET** /v1/sms/account/{accountID}/campaign/{campaignID}/phonenumber | 
[**v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut**](SMSApi.md#v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut) | **PUT** /v1/sms/account/{accountID}/campaign/{campaignID}/phonenumber | 
[**v1SmsAccountAccountIDCampaignImportGet**](SMSApi.md#v1SmsAccountAccountIDCampaignImportGet) | **GET** /v1/sms/account/{accountID}/campaign/import | 



## v1SmsAccountAccountIDCampaignCampaignIDImportGet



Get details about a single imported campaign in an account.

### Example

```bash
 v1SmsAccountAccountIDCampaignCampaignIDImportGet accountID=value campaignID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **campaignID** | **string** | Campaign ID | [default to null]

### Return type

[**ServiceDocsCampaignImportOutput**](ServiceDocsCampaignImportOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1SmsAccountAccountIDCampaignCampaignIDImportPost



Import campaign

### Example

```bash
 v1SmsAccountAccountIDCampaignCampaignIDImportPost accountID=value campaignID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **campaignID** | **string** | Campaign ID | [default to null]

### Return type

[**ServiceDocsCampaignImportOutput**](ServiceDocsCampaignImportOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet



Get telephone numbers associated with a campaign.

### Example

```bash
 v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet accountID=value campaignID=value  page_num=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **campaignID** | **string** | Campaign ID | [default to null]
 **pageNum** | **integer** | Page number | [optional] [default to null]
 **pageSize** | **integer** | Page size | [optional] [default to null]

### Return type

[**ServiceDocsCampaignPhoneNumberOutput**](ServiceDocsCampaignPhoneNumberOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut



Associate or dissociate telephone numbers with a campaign.

### Example

```bash
 v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut accountID=value campaignID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **campaignID** | **string** | Campaign ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceCampaignTagDetagPhonenumbers**](ServiceCampaignTagDetagPhonenumbers.md) | payload fields |

### Return type

[**ServiceDocsCampaignTagDetagPhonenumbersOutput**](ServiceDocsCampaignTagDetagPhonenumbersOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1SmsAccountAccountIDCampaignImportGet



Get a list of all imported campaigns in an account.

### Example

```bash
 v1SmsAccountAccountIDCampaignImportGet accountID=value  page_num=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **pageNum** | **integer** | Page number | [optional] [default to null]
 **pageSize** | **integer** | Page size | [optional] [default to null]

### Return type

[**ServiceDocsCampaignImportedGetAllOutput**](ServiceDocsCampaignImportedGetAllOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

