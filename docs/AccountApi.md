# AccountApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountidChildrenGet**](AccountApi.md#v1AccountAccountidChildrenGet) | **GET** /v1/account/{accountid}/children | Get Sub Account List
[**v1AccountAccountidDelete**](AccountApi.md#v1AccountAccountidDelete) | **DELETE** /v1/account/{accountid} | Delete Account
[**v1AccountAccountidDnsrecordGet**](AccountApi.md#v1AccountAccountidDnsrecordGet) | **GET** /v1/account/{accountid}/dnsrecord | Get Account DNS Record
[**v1AccountAccountidDnsrecordPost**](AccountApi.md#v1AccountAccountidDnsrecordPost) | **POST** /v1/account/{accountid}/dnsrecord | Create Account DNS Record
[**v1AccountAccountidDnsrecordPut**](AccountApi.md#v1AccountAccountidDnsrecordPut) | **PUT** /v1/account/{accountid}/dnsrecord | Convert Account DNS Record
[**v1AccountAccountidGet**](AccountApi.md#v1AccountAccountidGet) | **GET** /v1/account/{accountid} | Get Account Details
[**v1AccountAccountidLimitGet**](AccountApi.md#v1AccountAccountidLimitGet) | **GET** /v1/account/{accountid}/limit | Get Account Limits
[**v1AccountAccountidLimitPut**](AccountApi.md#v1AccountAccountidLimitPut) | **PUT** /v1/account/{accountid}/limit | Set Account Limits
[**v1AccountAccountidPost**](AccountApi.md#v1AccountAccountidPost) | **POST** /v1/account/{accountid} | Create Sub Account
[**v1AccountAccountidProvisioningdetailsGet**](AccountApi.md#v1AccountAccountidProvisioningdetailsGet) | **GET** /v1/account/{accountid}/provisioningdetails | Get Account Provisioning Details
[**v1AccountAccountidProvisioningdetailsResetpwPut**](AccountApi.md#v1AccountAccountidProvisioningdetailsResetpwPut) | **PUT** /v1/account/{accountid}/provisioningdetails/resetpw | Reset the provisioning details password.
[**v1AccountAccountidPut**](AccountApi.md#v1AccountAccountidPut) | **PUT** /v1/account/{accountid} | Update Account
[**v1AccountApikeyGet**](AccountApi.md#v1AccountApikeyGet) | **GET** /v1/account/apikey | 
[**v1AccountGet**](AccountApi.md#v1AccountGet) | **GET** /v1/account | Get Account List
[**v1AccountPost**](AccountApi.md#v1AccountPost) | **POST** /v1/account | Create Account



## v1AccountAccountidChildrenGet

Get Sub Account List

Conveniently access the list of children accounts.

### Example

```bash
 v1AccountAccountidChildrenGet accountid=value  start_key=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **startKey** | **string** | start_key for pagination that was returned as next_start_key from your previous call | [optional] [default to null]
 **pageSize** | **integer** | number of records to return, range 1 to 50 | [optional] [default to null]

### Return type

[**ServiceDocsAccountGetAll**](ServiceDocsAccountGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidDelete

Delete Account

Delete an account within your organization.

### Example

```bash
 v1AccountAccountidDelete accountid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidDnsrecordGet

Get Account DNS Record

Get the DNS record of an account from the Route 53 entry.

### Example

```bash
 v1AccountAccountidDnsrecordGet accountid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidDnsrecordPost

Create Account DNS Record

Create the DNS record of an account with the help realm in the Route 53 entry.

### Example

```bash
 v1AccountAccountidDnsrecordPost accountid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidDnsrecordPut

Convert Account DNS Record

Toggle the realm DNS record between srv and cname.

### Example

```bash
 v1AccountAccountidDnsrecordPut accountid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **dnsrecord** | [**ServiceUpdateRecordTypeForAccount**](ServiceUpdateRecordTypeForAccount.md) | record type fields with value SRV, CNAME |

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidGet

Get Account Details

This endpoint will not allow for modifying or making updates, it will only allow users to view/retrieve details.

### Example

```bash
 v1AccountAccountidGet accountid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidLimitGet

Get Account Limits

Check the maximum number of inbound, outbound, and two-way trunks.

### Example

```bash
 v1AccountAccountidLimitGet accountid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsAccountLimit**](ServiceDocsAccountLimit.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidLimitPut

Set Account Limits

Apply parameters to restrict access to inbound, outbound, and two-way trunks.

### Example

```bash
 v1AccountAccountidLimitPut accountid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **limit** | [**ServiceVOIPAccountLimit2**](ServiceVOIPAccountLimit2.md) | account fields |

### Return type

[**ServiceDocsAccountLimit**](ServiceDocsAccountLimit.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidPost

Create Sub Account

Establish a sub account to enable an administrator within your organization to create accounts.

### Example

```bash
 v1AccountAccountidPost accountid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **account** | [**ServiceVOIPAccountAddData**](ServiceVOIPAccountAddData.md) | account fields |

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidProvisioningdetailsGet

Get Account Provisioning Details

Get the provisioning details of an account.

### Example

```bash
 v1AccountAccountidProvisioningdetailsGet accountid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsAccountProvisioning**](ServiceDocsAccountProvisioning.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidProvisioningdetailsResetpwPut

Reset the provisioning details password.

Reset the existing provisioning details password and set it to a new one.

### Example

```bash
 v1AccountAccountidProvisioningdetailsResetpwPut accountid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsAccountProvisioning**](ServiceDocsAccountProvisioning.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidPut

Update Account

Modify pertinent account data.

### Example

```bash
 v1AccountAccountidPut accountid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **account** | [**ServiceVOIPAccountEditData**](ServiceVOIPAccountEditData.md) | account fields |

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountApikeyGet



Authenticate an application or user request to get the client ID and client secret for a CPaaS account.

### Example

```bash
 v1AccountApikeyGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ServiceDocsAccountAPIKey**](ServiceDocsAccountAPIKey.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountGet

Get Account List

Retrieve a list of all CPaaS accounts that exist within your organization.

### Example

```bash
 v1AccountGet  start_key=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startKey** | **string** | start_key for pagination that was returned as next_start_key from your previous call | [optional] [default to null]
 **pageSize** | **integer** | number of records to return, range 1 to 50 | [optional] [default to null]

### Return type

[**ServiceDocsAccountGetAll**](ServiceDocsAccountGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountPost

Create Account

Create an account.

### Example

```bash
 v1AccountPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | [**ServiceVOIPAccountAddData**](ServiceVOIPAccountAddData.md) | account fields |

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

