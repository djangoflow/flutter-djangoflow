# djangoflow_openapi.api.AuthApi

## Load the API package
```dart
import 'package:djangoflow_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authOtpCreate**](AuthApi.md#authotpcreate) | **POST** /api/v1/auth/otp/ | 
[**authOtpDevicesConfirmCreate**](AuthApi.md#authotpdevicesconfirmcreate) | **POST** /api/v1/auth/otp-devices/{id}/confirm/ | 
[**authOtpDevicesCreate**](AuthApi.md#authotpdevicescreate) | **POST** /api/v1/auth/otp-devices/ | 
[**authOtpDevicesDestroy**](AuthApi.md#authotpdevicesdestroy) | **DELETE** /api/v1/auth/otp-devices/{id}/ | 
[**authOtpDevicesList**](AuthApi.md#authotpdeviceslist) | **GET** /api/v1/auth/otp-devices/ | 
[**authOtpDevicesRetrieve**](AuthApi.md#authotpdevicesretrieve) | **GET** /api/v1/auth/otp-devices/{id}/ | 
[**authSocialConnectCreate**](AuthApi.md#authsocialconnectcreate) | **POST** /api/v1/auth/social/connect/ | 
[**authSocialCreate**](AuthApi.md#authsocialcreate) | **POST** /api/v1/auth/social/ | 
[**authTokenBlacklistCreate**](AuthApi.md#authtokenblacklistcreate) | **POST** /api/v1/auth/token/blacklist/ | 
[**authTokenCreate**](AuthApi.md#authtokencreate) | **POST** /api/v1/auth/token/ | 
[**authTokenRefreshCreate**](AuthApi.md#authtokenrefreshcreate) | **POST** /api/v1/auth/token/refresh/ | 
[**authTokenVerifyCreate**](AuthApi.md#authtokenverifycreate) | **POST** /api/v1/auth/token/verify/ | 
[**authUsersCreate**](AuthApi.md#authuserscreate) | **POST** /api/v1/auth/users/ | 
[**authUsersPartialUpdate**](AuthApi.md#authuserspartialupdate) | **PATCH** /api/v1/auth/users/{id}/ | 
[**authUsersRetrieve**](AuthApi.md#authusersretrieve) | **GET** /api/v1/auth/users/{id}/ | 
[**authUsersSetPasswordCreate**](AuthApi.md#authuserssetpasswordcreate) | **POST** /api/v1/auth/users/{id}/set-password/ | 


# **authOtpCreate**
> OTPObtain authOtpCreate(oTPObtainRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final OTPObtainRequest oTPObtainRequest = ; // OTPObtainRequest | 

try {
    final response = api.authOtpCreate(oTPObtainRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authOtpCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oTPObtainRequest** | [**OTPObtainRequest**](OTPObtainRequest.md)|  | [optional] 

### Return type

[**OTPObtain**](OTPObtain.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authOtpDevicesConfirmCreate**
> authOtpDevicesConfirmCreate(id, type, oTPDeviceConfirmRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final String id = id_example; // String | 
final String type = type_example; // String | OTP Device type
final OTPDeviceConfirmRequest oTPDeviceConfirmRequest = ; // OTPDeviceConfirmRequest | 

try {
    api.authOtpDevicesConfirmCreate(id, type, oTPDeviceConfirmRequest);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authOtpDevicesConfirmCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **type** | **String**| OTP Device type | 
 **oTPDeviceConfirmRequest** | [**OTPDeviceConfirmRequest**](OTPDeviceConfirmRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authOtpDevicesCreate**
> OTPDevice authOtpDevicesCreate(oTPDeviceRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final OTPDeviceRequest oTPDeviceRequest = ; // OTPDeviceRequest | 

try {
    final response = api.authOtpDevicesCreate(oTPDeviceRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authOtpDevicesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oTPDeviceRequest** | [**OTPDeviceRequest**](OTPDeviceRequest.md)|  | 

### Return type

[**OTPDevice**](OTPDevice.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authOtpDevicesDestroy**
> authOtpDevicesDestroy(id, type)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final String id = id_example; // String | 
final String type = type_example; // String | OTP Device type

try {
    api.authOtpDevicesDestroy(id, type);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authOtpDevicesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **type** | **String**| OTP Device type | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authOtpDevicesList**
> PaginatedOTPDeviceList authOtpDevicesList(limit, offset)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final int limit = 56; // int | Number of results to return per page.
final int offset = 56; // int | The initial index from which to return the results.

try {
    final response = api.authOtpDevicesList(limit, offset);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authOtpDevicesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 

### Return type

[**PaginatedOTPDeviceList**](PaginatedOTPDeviceList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authOtpDevicesRetrieve**
> OTPDevice authOtpDevicesRetrieve(id, type)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final String id = id_example; // String | 
final String type = type_example; // String | OTP Device type

try {
    final response = api.authOtpDevicesRetrieve(id, type);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authOtpDevicesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **type** | **String**| OTP Device type | 

### Return type

[**OTPDevice**](OTPDevice.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authSocialConnectCreate**
> Token authSocialConnectCreate(socialTokenObtainRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final SocialTokenObtainRequest socialTokenObtainRequest = ; // SocialTokenObtainRequest | 

try {
    final response = api.authSocialConnectCreate(socialTokenObtainRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authSocialConnectCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialTokenObtainRequest** | [**SocialTokenObtainRequest**](SocialTokenObtainRequest.md)|  | 

### Return type

[**Token**](Token.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authSocialCreate**
> Token authSocialCreate(socialTokenObtainRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final SocialTokenObtainRequest socialTokenObtainRequest = ; // SocialTokenObtainRequest | 

try {
    final response = api.authSocialCreate(socialTokenObtainRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authSocialCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialTokenObtainRequest** | [**SocialTokenObtainRequest**](SocialTokenObtainRequest.md)|  | 

### Return type

[**Token**](Token.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authTokenBlacklistCreate**
> Token authTokenBlacklistCreate(tokenBlacklistRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final TokenBlacklistRequest tokenBlacklistRequest = ; // TokenBlacklistRequest | 

try {
    final response = api.authTokenBlacklistCreate(tokenBlacklistRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authTokenBlacklistCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenBlacklistRequest** | [**TokenBlacklistRequest**](TokenBlacklistRequest.md)|  | 

### Return type

[**Token**](Token.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authTokenCreate**
> Token authTokenCreate(tokenObtainRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final TokenObtainRequest tokenObtainRequest = ; // TokenObtainRequest | 

try {
    final response = api.authTokenCreate(tokenObtainRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authTokenCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenObtainRequest** | [**TokenObtainRequest**](TokenObtainRequest.md)|  | [optional] 

### Return type

[**Token**](Token.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authTokenRefreshCreate**
> Token authTokenRefreshCreate(tokenRefreshRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final TokenRefreshRequest tokenRefreshRequest = ; // TokenRefreshRequest | 

try {
    final response = api.authTokenRefreshCreate(tokenRefreshRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authTokenRefreshCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenRefreshRequest** | [**TokenRefreshRequest**](TokenRefreshRequest.md)|  | 

### Return type

[**Token**](Token.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authTokenVerifyCreate**
> Token authTokenVerifyCreate(tokenVerifyRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final TokenVerifyRequest tokenVerifyRequest = ; // TokenVerifyRequest | 

try {
    final response = api.authTokenVerifyCreate(tokenVerifyRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authTokenVerifyCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenVerifyRequest** | [**TokenVerifyRequest**](TokenVerifyRequest.md)|  | 

### Return type

[**Token**](Token.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUsersCreate**
> UserIdentity authUsersCreate(userIdentityRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final UserIdentityRequest userIdentityRequest = ; // UserIdentityRequest | 

try {
    final response = api.authUsersCreate(userIdentityRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authUsersCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIdentityRequest** | [**UserIdentityRequest**](UserIdentityRequest.md)|  | [optional] 

### Return type

[**UserIdentity**](UserIdentity.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUsersPartialUpdate**
> UserIdentity authUsersPartialUpdate(id, patchedUserIdentityRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final String id = id_example; // String | 
final PatchedUserIdentityRequest patchedUserIdentityRequest = ; // PatchedUserIdentityRequest | 

try {
    final response = api.authUsersPartialUpdate(id, patchedUserIdentityRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authUsersPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **patchedUserIdentityRequest** | [**PatchedUserIdentityRequest**](PatchedUserIdentityRequest.md)|  | [optional] 

### Return type

[**UserIdentity**](UserIdentity.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUsersRetrieve**
> UserIdentity authUsersRetrieve(id)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final String id = id_example; // String | 

try {
    final response = api.authUsersRetrieve(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authUsersRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**UserIdentity**](UserIdentity.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUsersSetPasswordCreate**
> authUsersSetPasswordCreate(id, changePasswordRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final String id = id_example; // String | 
final ChangePasswordRequest changePasswordRequest = ; // ChangePasswordRequest | 

try {
    api.authUsersSetPasswordCreate(id, changePasswordRequest);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authUsersSetPasswordCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **changePasswordRequest** | [**ChangePasswordRequest**](ChangePasswordRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

