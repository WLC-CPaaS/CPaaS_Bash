# DataApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDCdrCdrIDGet**](DataApi.md#v1AccountAccountIDCdrCdrIDGet) | **GET** /v1/account/{accountID}/cdr/{cdrID} | Get CDR Details
[**v1AccountAccountIDCdrGet**](DataApi.md#v1AccountAccountIDCdrGet) | **GET** /v1/account/{accountID}/cdr | Get CDR List
[**v1DataCallDailySummaryGet**](DataApi.md#v1DataCallDailySummaryGet) | **GET** /v1/data/call_daily_summary | Get Call Daily Summary List
[**v1DataCallDetailGet**](DataApi.md#v1DataCallDetailGet) | **GET** /v1/data/call_detail | Get Call Detail List
[**v1DataCallMonthlySummaryGet**](DataApi.md#v1DataCallMonthlySummaryGet) | **GET** /v1/data/call_monthly_summary | Get Call Detail List
[**v1DataEndpointListGet**](DataApi.md#v1DataEndpointListGet) | **GET** /v1/data/endpoint_list | Get Endpoint List
[**v1DataEventDailySummaryGet**](DataApi.md#v1DataEventDailySummaryGet) | **GET** /v1/data/event_daily_summary | Get Event Daily Summary List
[**v1DataEventDetailGet**](DataApi.md#v1DataEventDetailGet) | **GET** /v1/data/event_detail | Get Event Details
[**v1DataEventMonthlySummaryGet**](DataApi.md#v1DataEventMonthlySummaryGet) | **GET** /v1/data/event_monthly_summary | Get Event Monthly Summary List
[**v1DataFeatureDailySummaryGet**](DataApi.md#v1DataFeatureDailySummaryGet) | **GET** /v1/data/feature_daily_summary | Get Feature Daily Summary List
[**v1DataFeatureMonthlySummaryGet**](DataApi.md#v1DataFeatureMonthlySummaryGet) | **GET** /v1/data/feature_monthly_summary | Get Feature Monthly Summary List



## v1AccountAccountIDCdrCdrIDGet

Get CDR Details

Retrieve the details of a single CDR record from an account.

### Example

```bash
 v1AccountAccountIDCdrCdrIDGet accountID=value cdrID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **cdrID** | **string** | CDR ID, string | [default to null]

### Return type

[**ServiceDocsCdrGetSingle**](ServiceDocsCdrGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountIDCdrGet

Get CDR List

Retrieve a list of CDRs in a specific account.

### Example

```bash
 v1AccountAccountIDCdrGet accountID=value  page_size=value  start_key=value  created_from=value  created_to=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **string** | Account ID, 32 alpha numeric | [default to null]
 **pageSize** | **string** | Page size (Maximum number of results to display per page) | [optional] [default to null]
 **startKey** | **string** | Start key (Starting offset for displaying results) | [optional] [default to null]
 **createdFrom** | **string** | For displaying records which are created on or after this timestamp (Supported timestamp formats: iso 8601, unix time in seconds or milliseconds or microseconds or nanoseconds) | [optional] [default to null]
 **createdTo** | **string** | For displaying records which are created on or before this timestamp (Supported timestamp formats: iso 8601, unix time in seconds or milliseconds or microseconds or nanoseconds) | [optional] [default to null]

### Return type

[**ServiceDocsCdrGetAll**](ServiceDocsCdrGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1DataCallDailySummaryGet

Get Call Daily Summary List

Retrieve a daily summary of calls, including the account ID that made or received a call, the call type, the month and year, the duration, and other relevant information.

### Example

```bash
 v1DataCallDailySummaryGet  account_id=value  call_type=value  end_date=value  page_size=value  start_date=value  start_key=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **string** |  | [optional] [default to null]
 **callType** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **startKey** | **string** |  | [optional] [default to null]

### Return type

[**ServiceDocsCallDailySummary**](ServiceDocsCallDailySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1DataCallDetailGet

Get Call Detail List

Retrieve specific details about a call (e.g., caller, recipient, date, time, duration, etc.).

### Example

```bash
 v1DataCallDetailGet  account=value  call_type=value  callee_name=value  callee_number=value  caller_name=value  caller_number=value  end_date=value  page_size=value  start_date=value  start_key=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | **string** |  | [optional] [default to null]
 **callType** | **string** |  | [optional] [default to null]
 **calleeName** | **string** |  | [optional] [default to null]
 **calleeNumber** | **string** |  | [optional] [default to null]
 **callerName** | **string** |  | [optional] [default to null]
 **callerNumber** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **startKey** | **string** |  | [optional] [default to null]

### Return type

[**ServiceDocsCallDetail**](ServiceDocsCallDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1DataCallMonthlySummaryGet

Get Call Detail List

Retrieve a monthly summary of calls, including which accounts made or received calls, the call type, and other relevant information.

### Example

```bash
 v1DataCallMonthlySummaryGet  account=value  call_type=value  end_month=value  end_year=value  page_size=value  start_key=value  start_month=value  start_year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | **string** |  | [optional] [default to null]
 **callType** | **string** |  | [optional] [default to null]
 **endMonth** | **integer** |  | [optional] [default to null]
 **endYear** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **startKey** | **string** |  | [optional] [default to null]
 **startMonth** | **integer** |  | [optional] [default to null]
 **startYear** | **integer** |  | [optional] [default to null]

### Return type

[**ServiceDocsCallMonthlySummary**](ServiceDocsCallMonthlySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1DataEndpointListGet

Get Endpoint List

Access the endpoint list for each CPaaS API.

### Example

```bash
 v1DataEndpointListGet  endpoint_name=value  feature_name=value  page_size=value  start_key=value  transaction_type=value  version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpointName** | **string** |  | [optional] [default to null]
 **featureName** | **string** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **startKey** | **string** |  | [optional] [default to null]
 **transactionType** | **string** |  | [optional] [default to null]
 **version** | **string** |  | [optional] [default to null]

### Return type

[**ServiceDocsEndpointList**](ServiceDocsEndpointList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1DataEventDailySummaryGet

Get Event Daily Summary List

Obtain a daily summary of events in a CPaaS account (e.g., setting/resetting the presence status for a user or extension).

### Example

```bash
 v1DataEventDailySummaryGet  account_id=value  component=value  end_date=value  page_size=value  start_date=value  start_key=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **string** |  | [optional] [default to null]
 **component** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **startKey** | **string** |  | [optional] [default to null]

### Return type

[**ServiceDocsEventDailySummary**](ServiceDocsEventDailySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1DataEventDetailGet

Get Event Details

Obtain specific details about an event (e.g., an E911 notification, a deleted account, or a created user).

### Example

```bash
 v1DataEventDetailGet  account_id=value  component=value  end_date_time=value  event_name=value  exec_status=value  page_size=value  start_date_time=value  start_key=value  username=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **string** |  | [optional] [default to null]
 **component** | **string** |  | [optional] [default to null]
 **endDateTime** | **string** |  | [optional] [default to null]
 **eventName** | **string** |  | [optional] [default to null]
 **execStatus** | **string** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **startDateTime** | **string** |  | [optional] [default to null]
 **startKey** | **string** |  | [optional] [default to null]
 **username** | **string** |  | [optional] [default to null]

### Return type

[**ServiceDocsEventDetail**](ServiceDocsEventDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1DataEventMonthlySummaryGet

Get Event Monthly Summary List

Obtain a monthly summary of events in a CPaaS account (e.g., adding media files or assigning phone numbers).

### Example

```bash
 v1DataEventMonthlySummaryGet  account_id=value  component=value  end_month=value  end_year=value  page_size=value  start_key=value  start_month=value  start_year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **string** |  | [optional] [default to null]
 **component** | **string** |  | [optional] [default to null]
 **endMonth** | **integer** |  | [optional] [default to null]
 **endYear** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **startKey** | **string** |  | [optional] [default to null]
 **startMonth** | **integer** |  | [optional] [default to null]
 **startYear** | **integer** |  | [optional] [default to null]

### Return type

[**ServiceDocsEventMonthlySummary**](ServiceDocsEventMonthlySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1DataFeatureDailySummaryGet

Get Feature Daily Summary List

Retrieve a daily summary about a feature, including usage, which accounts execute the steps, and other relevant information.

### Example

```bash
 v1DataFeatureDailySummaryGet  end_date=value  feature_name=value  page_size=value  start_date=value  start_key=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endDate** | **string** |  | [optional] [default to null]
 **featureName** | **string** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **startKey** | **string** |  | [optional] [default to null]

### Return type

[**ServiceDocsFeatureDailySummary**](ServiceDocsFeatureDailySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1DataFeatureMonthlySummaryGet

Get Feature Monthly Summary List

Retrieve a monthly summary about a feature’s usage, new users, updates, and other relevant information.

### Example

```bash
 v1DataFeatureMonthlySummaryGet  end_month=value  end_year=value  feature_name=value  page_size=value  start_key=value  start_month=value  start_year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endMonth** | **integer** |  | [optional] [default to null]
 **endYear** | **integer** |  | [optional] [default to null]
 **featureName** | **string** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **startKey** | **string** |  | [optional] [default to null]
 **startMonth** | **integer** |  | [optional] [default to null]
 **startYear** | **integer** |  | [optional] [default to null]

### Return type

[**ServiceDocsFeatureMonthlySummary**](ServiceDocsFeatureMonthlySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

