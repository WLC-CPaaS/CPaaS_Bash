# E911Api

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1E911Get**](E911Api.md#v1E911Get) | **GET** /v1/e911 | Get E911 List
[**v1E911LocationLocationIDActivatePut**](E911Api.md#v1E911LocationLocationIDActivatePut) | **PUT** /v1/e911/location/{locationID}/activate | Activate E911 Location
[**v1E911LocationLocationIDDelete**](E911Api.md#v1E911LocationLocationIDDelete) | **DELETE** /v1/e911/location/{locationID} | Delete E911 Location
[**v1E911LocationValidatePut**](E911Api.md#v1E911LocationValidatePut) | **PUT** /v1/e911/location/validate | Validate a Location
[**v1E911PhoneNumberDelete**](E911Api.md#v1E911PhoneNumberDelete) | **DELETE** /v1/e911/{phoneNumber} | Delete E911 Phone Number
[**v1E911PhoneNumberLocationActiveGet**](E911Api.md#v1E911PhoneNumberLocationActiveGet) | **GET** /v1/e911/{phoneNumber}/location/active | Get Actvie Location for a Phone Number
[**v1E911PhoneNumberLocationGet**](E911Api.md#v1E911PhoneNumberLocationGet) | **GET** /v1/e911/{phoneNumber}/location | Get Location List for Phone Number
[**v1E911Post**](E911Api.md#v1E911Post) | **POST** /v1/e911 | Create an E911 Location



## v1E911Get

Get E911 List

Obtain e911 URIs associated with the provided account ID.

### Example

```bash
 v1E911Get
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ServiceDocE911URIsApiOutput**](ServiceDocE911URIsApiOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1E911LocationLocationIDActivatePut

Activate E911 Location

Edit the provision location.

### Example

```bash
 v1E911LocationLocationIDActivatePut locationID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationID** | **string** | Location ID | [default to null]

### Return type

[**ServiceDocE911ActiveLocationOutput**](ServiceDocE911ActiveLocationOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1E911LocationLocationIDDelete

Delete E911 Location

Remove the location.

### Example

```bash
 v1E911LocationLocationIDDelete locationID=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationID** | **string** | Location ID | [default to null]

### Return type

[**ServiceDocE911RemoveLocationOutput**](ServiceDocE911RemoveLocationOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1E911LocationValidatePut

Validate a Location

Validate the location details.

### Example

```bash
 v1E911LocationValidatePut
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqBody** | [**ServiceE911ValidateLocationInput**](ServiceE911ValidateLocationInput.md) | location details |

### Return type

[**ServiceDocE911ValidateLocationOutput**](ServiceDocE911ValidateLocationOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1E911PhoneNumberDelete

Delete E911 Phone Number

Delete the e911 URI connected with the account URI.

### Example

```bash
 v1E911PhoneNumberDelete phoneNumber=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **string** | Phone Number | [default to null]

### Return type

[**ServiceDocE911RemoveURIApiOutput**](ServiceDocE911RemoveURIApiOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1E911PhoneNumberLocationActiveGet

Get Actvie Location for a Phone Number

Get the e911 location connected with the URI.

### Example

```bash
 v1E911PhoneNumberLocationActiveGet phoneNumber=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **string** | Phone Number | [default to null]

### Return type

[**ServiceDocE911ActiveLocationURIApiOutput**](ServiceDocE911ActiveLocationURIApiOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1E911PhoneNumberLocationGet

Get Location List for Phone Number

Access a list of the e911 locations associated with the provided URI.

### Example

```bash
 v1E911PhoneNumberLocationGet phoneNumber=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **string** | Phone Number | [default to null]

### Return type

[**ServiceDocE911LocationsURIApiOutput**](ServiceDocE911LocationsURIApiOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1E911Post

Create an E911 Location

Enter new location details.

### Example

```bash
 v1E911Post
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqBody** | [**ServiceE911AddLocationInput**](ServiceE911AddLocationInput.md) | location details |

### Return type

[**ServiceDocE911AddLocationOutput**](ServiceDocE911AddLocationOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

