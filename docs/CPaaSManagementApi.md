# CPaaSManagementApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1MgmtUserGet**](CPaaSManagementApi.md#v1MgmtUserGet) | **GET** /v1/mgmt/user | Get All CPaaS Users
[**v1MgmtUserPost**](CPaaSManagementApi.md#v1MgmtUserPost) | **POST** /v1/mgmt/user | Invite CPaaS User
[**v1MgmtUserUserIDDelete**](CPaaSManagementApi.md#v1MgmtUserUserIDDelete) | **DELETE** /v1/mgmt/user/{userID} | Delete CPaaS User
[**v1MgmtUserUserIDGet**](CPaaSManagementApi.md#v1MgmtUserUserIDGet) | **GET** /v1/mgmt/user/{userID} | Get CPaaS User Details
[**v1MgmtUserUserIDPut**](CPaaSManagementApi.md#v1MgmtUserUserIDPut) | **PUT** /v1/mgmt/user/{userID} | Update CPaaS User Role



## v1MgmtUserGet

Get All CPaaS Users

Retrieve a list of all CPaaS users in an account.

### Example

```bash
 v1MgmtUserGet  page_size=value  start_key=value  sort=value  email=value  role=value  first_name=value  last_name=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **integer** | number of records to return, range 1 to 100 | [optional] [default to null]
 **startKey** | **string** | unique to fetch next records | [optional] [default to null]
 **sort** | **string** | sorting the records by email(default)/role/first_name/last_name, _A is for ascending and _D is for descending, eg: sort=role_A,email_D | [optional] [default to null]
 **email** | **string** | Email | [optional] [default to null]
 **role** | **string** | User Role | [optional] [default to null]
 **firstName** | **string** | First Name | [optional] [default to null]
 **lastName** | **string** | Last Name | [optional] [default to null]

### Return type

[**ServiceDocsAdminUserGetAll**](ServiceDocsAdminUserGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1MgmtUserPost

Invite CPaaS User

Link a new CPaaS user to an existing client account.

### Example

```bash
 v1MgmtUserPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqBody** | [**ServiceAdminUserAddData**](ServiceAdminUserAddData.md) | payload fields |

### Return type

[**ServiceDocsAdminUserGetSingle**](ServiceDocsAdminUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1MgmtUserUserIDDelete

Delete CPaaS User

Delete a CPaaS user from the associated account.

### Example

```bash
 v1MgmtUserUserIDDelete userID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **string** | User ID, numeric | [default to null]

### Return type

[**ServiceDocsAdminUserDelete**](ServiceDocsAdminUserDelete.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1MgmtUserUserIDGet

Get CPaaS User Details

View details about each CPaaS user in an account.

### Example

```bash
 v1MgmtUserUserIDGet userID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **string** | User ID, numeric | [default to null]

### Return type

[**ServiceDocsAdminUserGetSingle**](ServiceDocsAdminUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1MgmtUserUserIDPut

Update CPaaS User Role

Update a CPaaS user's role within a client's account.

### Example

```bash
 v1MgmtUserUserIDPut userID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **string** | User ID, numeric | [default to null]
 **reqBody** | [**ServiceAdminUserEditData**](ServiceAdminUserEditData.md) | payload fields |

### Return type

[**ServiceDocsAdminUserGetSingle**](ServiceDocsAdminUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

