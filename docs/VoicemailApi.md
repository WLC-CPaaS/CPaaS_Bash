# VoicemailApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDVoicemailGet**](VoicemailApi.md#v1AccountAccountIDVoicemailGet) | **GET** /v1/account/{accountID}/voicemail | Get Voicemail Box List
[**v1AccountAccountIDVoicemailPost**](VoicemailApi.md#v1AccountAccountIDVoicemailPost) | **POST** /v1/account/{accountID}/voicemail | Create Voicemail Box
[**v1AccountAccountIDVoicemailVoicemailIDDelete**](VoicemailApi.md#v1AccountAccountIDVoicemailVoicemailIDDelete) | **DELETE** /v1/account/{accountID}/voicemail/{voicemailID} | Delete Voicemail Box
[**v1AccountAccountIDVoicemailVoicemailIDGet**](VoicemailApi.md#v1AccountAccountIDVoicemailVoicemailIDGet) | **GET** /v1/account/{accountID}/voicemail/{voicemailID} | Get Voicemail Box Details
[**v1AccountAccountIDVoicemailVoicemailIDMessageGet**](VoicemailApi.md#v1AccountAccountIDVoicemailVoicemailIDMessageGet) | **GET** /v1/account/{accountID}/voicemail/{voicemailID}/message | Get Voicemail Message List
[**v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete**](VoicemailApi.md#v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete) | **DELETE** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID} | Delete Voicemail Message
[**v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet**](VoicemailApi.md#v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet) | **GET** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID} | Get Voicemail Message Details
[**v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut**](VoicemailApi.md#v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut) | **PUT** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID} | Update Voicemail Message
[**v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet**](VoicemailApi.md#v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet) | **GET** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID}/raw | Get Voicemail Message File
[**v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost**](VoicemailApi.md#v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost) | **POST** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID}/raw | Add Voicemail Message File
[**v1AccountAccountIDVoicemailVoicemailIDMessagePost**](VoicemailApi.md#v1AccountAccountIDVoicemailVoicemailIDMessagePost) | **POST** /v1/account/{accountID}/voicemail/{voicemailID}/message | Create Voicemail Message
[**v1AccountAccountIDVoicemailVoicemailIDPut**](VoicemailApi.md#v1AccountAccountIDVoicemailVoicemailIDPut) | **PUT** /v1/account/{accountID}/voicemail/{voicemailID} | Update Voicemail Box



## v1AccountAccountIDVoicemailGet

Get Voicemail Box List

List all voicemail boxes in an account.

### Example

```bash
 v1AccountAccountIDVoicemailGet accountID=value  start_key=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **startKey** | **string** | start_key for pagination that was returned as next_start_key from your previous call | [optional] [default to null]
 **pageSize** | **integer** | number of records to return, range 1 to 50 | [optional] [default to null]

### Return type

[**ServiceDocsVoicemailGetAll**](ServiceDocsVoicemailGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDVoicemailPost

Create Voicemail Box

Create a voicemail box for receiving and storing voicemail messages.

### Example

```bash
 v1AccountAccountIDVoicemailPost accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | account ID, 32 alphanumeric | [default to null]
 **voicemail** | [**ServiceVOIPVoicemailAddEditData**](ServiceVOIPVoicemailAddEditData.md) | voicemail payload fields |

### Return type

[**ServiceDocsVoicemailGetSingle**](ServiceDocsVoicemailGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDVoicemailVoicemailIDDelete

Delete Voicemail Box

Delete a voicemail box in an account.

### Example

```bash
 v1AccountAccountIDVoicemailVoicemailIDDelete accountID=value voicemailID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **voicemailID** | **string** | Voicemail ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsVoicemailGetSingle**](ServiceDocsVoicemailGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDVoicemailVoicemailIDGet

Get Voicemail Box Details

Get information about a single voicemail box.

### Example

```bash
 v1AccountAccountIDVoicemailVoicemailIDGet accountID=value voicemailID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **voicemailID** | **string** | Voicemail ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsVoicemailGetSingle**](ServiceDocsVoicemailGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDVoicemailVoicemailIDMessageGet

Get Voicemail Message List

Get a list of voicemail messages from an account's voicemail box.

### Example

```bash
 v1AccountAccountIDVoicemailVoicemailIDMessageGet accountID=value voicemailID=value  start_key=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **voicemailID** | **string** | voicemail ID, 32 alpha numeric | [default to null]
 **startKey** | **string** | start_key for pagination that was returned as next_start_key from your previous call | [optional] [default to null]
 **pageSize** | **integer** | number of records to return, range 1 to 50 | [optional] [default to null]

### Return type

[**ServiceDocsVoicemailMessageGetAll**](ServiceDocsVoicemailMessageGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete

Delete Voicemail Message

Delete a voicemail message from a voicemail box in an account.

### Example

```bash
 v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete accountID=value voicemailID=value messageID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **voicemailID** | **string** | Voicemail ID, 32 alpha numeric | [default to null]
 **messageID** | **string** | message ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsVoicemailMessageGetSingle**](ServiceDocsVoicemailMessageGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet

Get Voicemail Message Details

Retrieve the container details of an individual voicemail message. This includes a reference to the audio file, but not the message itself.

### Example

```bash
 v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet accountID=value voicemailID=value messageID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **voicemailID** | **string** | Voicemail ID, 32 alpha numeric | [default to null]
 **messageID** | **string** | Message ID, 39 (yyyymm-<32 id>) | [default to null]

### Return type

[**ServiceDocsVoicemailMessageGetSingle**](ServiceDocsVoicemailMessageGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut

Update Voicemail Message

Copy or move a voicemail message to a different folder in the same voicemail box or move the message to a separate voicemail box.

### Example

```bash
 v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut accountID=value voicemailID=value messageID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **voicemailID** | **string** | Voicemail ID, 32 alpha numeric | [default to null]
 **messageID** | **string** | Message ID, 39 (yyyymm-<32 id>) | [default to null]
 **reqBody** | [**ServiceVOIPVoicemailMessageChange**](ServiceVOIPVoicemailMessageChange.md) | payload fields |

### Return type

[**ServiceDocsVoicemailMessageGetSingle**](ServiceDocsVoicemailMessageGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet

Get Voicemail Message File

Get the original audio content of a specific voicemail message identified by its unique ID within an account's voicemail box.
URL Param \"voicemailID\" is a unique 32-character alphanumeric identifier assigned by the system, which refers to a specific voicemail box.
URL Param \"messageID\" is a unique 32-character alphanumeric identifier assigned by the system, which refers to a specific message within a voicemail box.

### Example

```bash
 v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet accountID=value voicemailID=value messageID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, unique 32-character alphanumeric identifier | [default to null]
 **voicemailID** | **string** | Voicemail Box ID, unique 32-character alphanumeric identifier | [default to null]
 **messageID** | **string** | Message ID, unique 32-character alphanumeric identifier | [default to null]

### Return type

**binary**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost

Add Voicemail Message File

Associate an audio recording file with the voicemail to fully complete the message.

### Example

```bash
 v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost accountID=value voicemailID=value messageID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alphanumeric characters | [default to null]
 **voicemailID** | **string** | Voicemail ID, 32 alphanumeric characters | [default to null]
 **messageID** | **string** | Message ID, 32 alphanumeric characters | [default to null]
 **file** | **binary** | Audio file to upload | [default to null]

### Return type

[**map[String, AnyType]**](AnyType.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDVoicemailVoicemailIDMessagePost

Create Voicemail Message

Create the container information for a recorded voicemail message in a voicemail box.

### Example

```bash
 v1AccountAccountIDVoicemailVoicemailIDMessagePost accountID=value voicemailID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | account ID, 32 alphanumeric | [default to null]
 **voicemailID** | **string** | voicemail ID, 32 alphanumeric | [default to null]
 **message** | [**ServiceVOIPVoicemailMessageAddData**](ServiceVOIPVoicemailMessageAddData.md) | voicemail message payload fields |

### Return type

[**ServiceDocsVoicemailMessageGetSingle**](ServiceDocsVoicemailMessageGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDVoicemailVoicemailIDPut

Update Voicemail Box

Update the settings in an individual voicemail box, such as the owner, PIN, etc.

### Example

```bash
 v1AccountAccountIDVoicemailVoicemailIDPut accountID=value voicemailID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **voicemailID** | **string** | Voicemail ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceVOIPVoicemailAddEditData**](ServiceVOIPVoicemailAddEditData.md) | payload fields |

### Return type

[**ServiceDocsVoicemailGetSingle**](ServiceDocsVoicemailGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

