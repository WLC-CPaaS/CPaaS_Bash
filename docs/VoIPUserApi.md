# VoIPUserApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountidUserGet**](VoIPUserApi.md#v1AccountAccountidUserGet) | **GET** /v1/account/{accountid}/user | Get User List
[**v1AccountAccountidUserPost**](VoIPUserApi.md#v1AccountAccountidUserPost) | **POST** /v1/account/{accountid}/user | Create User
[**v1AccountAccountidUserUseridDelete**](VoIPUserApi.md#v1AccountAccountidUserUseridDelete) | **DELETE** /v1/account/{accountid}/user/{userid} | Delete User
[**v1AccountAccountidUserUseridGet**](VoIPUserApi.md#v1AccountAccountidUserUseridGet) | **GET** /v1/account/{accountid}/user/{userid} | Get User Details
[**v1AccountAccountidUserUseridPut**](VoIPUserApi.md#v1AccountAccountidUserUseridPut) | **PUT** /v1/account/{accountid}/user/{userid} | Update User
[**v1AccountAccountidUserUseridUserauthPost**](VoIPUserApi.md#v1AccountAccountidUserUseridUserauthPost) | **POST** /v1/account/{accountid}/user/{userid}/userauth | Impersonate a User



## v1AccountAccountidUserGet

Get User List

Get a list of all VoIP users that includes first and last names, email addresses, extensions, and account statuses.

### Example

```bash
 v1AccountAccountidUserGet accountid=value  start_key=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **startKey** | **string** | start_key for pagination that was returned as next_start_key from your previous call | [optional] [default to null]
 **pageSize** | **integer** | number of records to return, range 1 to 50 | [optional] [default to null]

### Return type

[**ServiceDocsUserGetAll**](ServiceDocsUserGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidUserPost

Create User

Add new users to the account. When a user is added, the system generates their unique 32 alpha numeric ID.

### Example

```bash
 v1AccountAccountidUserPost accountid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **user** | [**ServiceVOIPUserAdd2**](ServiceVOIPUserAdd2.md) | user fields |

### Return type

[**ServiceDocsUserGetSingle**](ServiceDocsUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidUserUseridDelete

Delete User

Delete VoIP user access to maintain the security of your accounts.

### Example

```bash
 v1AccountAccountidUserUseridDelete accountid=value userid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **userid** | **string** | User ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsUserGetSingle**](ServiceDocsUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidUserUseridGet

Get User Details

View specific user details.

### Example

```bash
 v1AccountAccountidUserUseridGet accountid=value userid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **userid** | **string** | User ID, 32 alpha numeric | [default to null]

### Return type

[**ServiceDocsUserGetSingle**](ServiceDocsUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidUserUseridPut

Update User

Keep user information current. Modify the first and last name, extension, and other pertinent information.

### Example

```bash
 v1AccountAccountidUserUseridPut accountid=value userid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **userid** | **string** | User ID, 32 alpha numeric | [default to null]
 **user** | [**ServiceVOIPUserAdd2**](ServiceVOIPUserAdd2.md) | user fields |

### Return type

[**ServiceDocsUserGetSingle**](ServiceDocsUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1AccountAccountidUserUseridUserauthPost

Impersonate a User

Retrieve a token for making presence calls.

### Example

```bash
 v1AccountAccountidUserUseridUserauthPost accountid=value userid=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **string** | Account ID, 32 alpha numeric | [default to null]
 **userid** | **string** | User ID, 32 alpha numeric | [default to null]
 **user** | [**ServiceVOIPImpersonateUser**](ServiceVOIPImpersonateUser.md) | Payload for impersonate a user |

### Return type

[**ServiceDocsImpersonateUserGetSingle**](ServiceDocsImpersonateUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

