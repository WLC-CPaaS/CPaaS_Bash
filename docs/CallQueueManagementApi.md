# CallQueueManagementApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDCallqueueGet**](CallQueueManagementApi.md#v1AccountAccountIDCallqueueGet) | **GET** /v1/account/{accountID}/callqueue | Get Call Queues
[**v1AccountAccountIDCallqueuePost**](CallQueueManagementApi.md#v1AccountAccountIDCallqueuePost) | **POST** /v1/account/{accountID}/callqueue | Create Call Queue
[**v1AccountAccountIDCallqueueQueueIDDelete**](CallQueueManagementApi.md#v1AccountAccountIDCallqueueQueueIDDelete) | **DELETE** /v1/account/{accountID}/callqueue/{queueID} | Delete Call Queue
[**v1AccountAccountIDCallqueueQueueIDGet**](CallQueueManagementApi.md#v1AccountAccountIDCallqueueQueueIDGet) | **GET** /v1/account/{accountID}/callqueue/{queueID} | Get Call Queue Details
[**v1AccountAccountIDCallqueueQueueIDPut**](CallQueueManagementApi.md#v1AccountAccountIDCallqueueQueueIDPut) | **PUT** /v1/account/{accountID}/callqueue/{queueID} | Update Call Queue
[**v1AccountAccountIDCallqueueQueueIDStatusGet**](CallQueueManagementApi.md#v1AccountAccountIDCallqueueQueueIDStatusGet) | **GET** /v1/account/{accountID}/callqueue/{queueID}/status | Get Call Queue Status
[**v1AccountAccountIDQueuerolesGet**](CallQueueManagementApi.md#v1AccountAccountIDQueuerolesGet) | **GET** /v1/account/{accountID}/queueroles | Get Queue Roles of Account
[**v1AccountAccountIDQueuerolesQueueIDPost**](CallQueueManagementApi.md#v1AccountAccountIDQueuerolesQueueIDPost) | **POST** /v1/account/{accountID}/queueroles/{queueID} | Assign Queue Role to Call Queue



## v1AccountAccountIDCallqueueGet

Get Call Queues

Retrieve call queue details for an account.

### Example

```bash
 v1AccountAccountIDCallqueueGet accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsCallQueueGetAll**](ServiceDocsCallQueueGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDCallqueuePost

Create Call Queue

Set up a call queue in an account for specific inbound calls.

### Example

```bash
 v1AccountAccountIDCallqueuePost accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceVOIPCallQueueAddEditData**](ServiceVOIPCallQueueAddEditData.md) | payload fields |

### Return type

[**ServiceDocsCallQueueGetSingle**](ServiceDocsCallQueueGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDCallqueueQueueIDDelete

Delete Call Queue

Remove the call queue from an account.

### Example

```bash
 v1AccountAccountIDCallqueueQueueIDDelete accountID=value queueID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **queueID** | **string** | Queue ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsCallQueueGetSingle**](ServiceDocsCallQueueGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDCallqueueQueueIDGet

Get Call Queue Details

Capture metadata about a specific queue, such as queue_type and agent_wrapup_time.

### Example

```bash
 v1AccountAccountIDCallqueueQueueIDGet accountID=value queueID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **queueID** | **string** | Queue ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsCallQueueGetSingle**](ServiceDocsCallQueueGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDCallqueueQueueIDPut

Update Call Queue

Update the metadata mentioned above.

### Example

```bash
 v1AccountAccountIDCallqueueQueueIDPut accountID=value queueID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **queueID** | **string** | Queue ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceVOIPCallQueueAddEditData**](ServiceVOIPCallQueueAddEditData.md) | payload fields |

### Return type

[**ServiceDocsCallQueueGetSingle**](ServiceDocsCallQueueGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDCallqueueQueueIDStatusGet

Get Call Queue Status

Access the status of a call queue in an account, such as the number of available agents (recipients), estimated wait time, and number of active sessions.

### Example

```bash
 v1AccountAccountIDCallqueueQueueIDStatusGet accountID=value queueID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **queueID** | **string** | Queue ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsCallQueueGetSingleStatus**](ServiceDocsCallQueueGetSingleStatus.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDQueuerolesGet

Get Queue Roles of Account

Obtain data about each queue role in an account.

### Example

```bash
 v1AccountAccountIDQueuerolesGet accountID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsCallQueueGetRoles**](ServiceDocsCallQueueGetRoles.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDQueuerolesQueueIDPost

Assign Queue Role to Call Queue

Assign roles to members in a call queue.

### Example

```bash
 v1AccountAccountIDQueuerolesQueueIDPost accountID=value queueID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **queueID** | **string** | Queue ID, 32 alpha numeric | [default to null]
 **reqBody** | [**ServiceVOIPCallQueueRoleAssignData**](ServiceVOIPCallQueueRoleAssignData.md) | payload fields |

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

