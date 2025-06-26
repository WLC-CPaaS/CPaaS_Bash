# DeviceApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountidDeviceDeviceidDelete**](DeviceApi.md#v1AccountAccountidDeviceDeviceidDelete) | **DELETE** /v1/account/{accountid}/device/{deviceid} | Delete Device
[**v1AccountAccountidDeviceDeviceidGet**](DeviceApi.md#v1AccountAccountidDeviceDeviceidGet) | **GET** /v1/account/{accountid}/device/{deviceid} | Get Device Details
[**v1AccountAccountidDeviceDeviceidPut**](DeviceApi.md#v1AccountAccountidDeviceDeviceidPut) | **PUT** /v1/account/{accountid}/device/{deviceid} | Update Device
[**v1AccountAccountidDeviceDeviceidRebootPost**](DeviceApi.md#v1AccountAccountidDeviceDeviceidRebootPost) | **POST** /v1/account/{accountid}/device/{deviceid}/reboot | Reboot Device
[**v1AccountAccountidDeviceGet**](DeviceApi.md#v1AccountAccountidDeviceGet) | **GET** /v1/account/{accountid}/device | Get Device List
[**v1AccountAccountidDevicePost**](DeviceApi.md#v1AccountAccountidDevicePost) | **POST** /v1/account/{accountid}/device | Create Device
[**v1AccountAccountidDeviceStatusGet**](DeviceApi.md#v1AccountAccountidDeviceStatusGet) | **GET** /v1/account/{accountid}/device/status | Get Device Status



## v1AccountAccountidDeviceDeviceidDelete

Delete Device

Remove one device from a CPaaS account.

### Example

```bash
 v1AccountAccountidDeviceDeviceidDelete accountid=value deviceid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **deviceid** | **string** | Device ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsDeviceGetSingle**](ServiceDocsDeviceGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidDeviceDeviceidGet

Get Device Details

Permit a user to view specific device details.

### Example

```bash
 v1AccountAccountidDeviceDeviceidGet accountid=value deviceid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **deviceid** | **string** | Device ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsDeviceGetSingle**](ServiceDocsDeviceGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidDeviceDeviceidPut

Update Device

Edit specifics about the device, such as the device type, name, and owner.

### Example

```bash
 v1AccountAccountidDeviceDeviceidPut accountid=value deviceid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **deviceid** | **string** | Device ID, 32 alpha numeric | [default to null]
 **device** | [**ServiceVOIPDeviceAddEdit2**](ServiceVOIPDeviceAddEdit2.md) | device fields |

### Return type

[**ServiceDocsDeviceGetSingle**](ServiceDocsDeviceGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidDeviceDeviceidRebootPost

Reboot Device

Reboot a device in an account to mitigate malware and improve device performance.

### Example

```bash
 v1AccountAccountidDeviceDeviceidRebootPost accountid=value deviceid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **deviceid** | **string** | Device ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsDeviceReboot**](ServiceDocsDeviceReboot.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidDeviceGet

Get Device List

Obtain a list of all devices associated with an account such as fax machines, cell phones, and soft phones.

### Example

```bash
 v1AccountAccountidDeviceGet accountid=value  start_key=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **startKey** | **string** | start_key for pagination that was returned as next_start_key from your previous call | [optional] [default to null]
 **pageSize** | **integer** | number of records to return, range 1 to 50 | [optional] [default to null]

### Return type

[**ServiceDocsDeviceGetAll**](ServiceDocsDeviceGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidDevicePost

Create Device

Connect a new device to an account to enhance communication methods.

### Example

```bash
 v1AccountAccountidDevicePost accountid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **device** | [**ServiceVOIPDeviceAddEdit2**](ServiceVOIPDeviceAddEdit2.md) | device fields |

### Return type

[**ServiceDocsDeviceGetSingle**](ServiceDocsDeviceGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidDeviceStatusGet

Get Device Status

Retrieve a device’s status (e.g., registered or not registered) in an account.

### Example

```bash
 v1AccountAccountidDeviceStatusGet accountid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsDeviceStatus**](ServiceDocsDeviceStatus.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

