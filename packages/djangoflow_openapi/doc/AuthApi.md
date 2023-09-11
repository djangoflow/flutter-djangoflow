# djangoflow_openapi.api.AuthApi

## Load the API package
```dart
import 'package:djangoflow_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authOtpCreate**](AuthApi.md#authotpcreate) | **POST** /api/v1/auth/otp/ | 
[**authOtpDeviceConfirmCreate**](AuthApi.md#authotpdeviceconfirmcreate) | **POST** /api/v1/auth/otp-device/{id}/confirm/ | 
[**authOtpDeviceCreate**](AuthApi.md#authotpdevicecreate) | **POST** /api/v1/auth/otp-device/ | 
[**authOtpDeviceDestroy**](AuthApi.md#authotpdevicedestroy) | **DELETE** /api/v1/auth/otp-device/{id}/ | 
[**authOtpDeviceList**](AuthApi.md#authotpdevicelist) | **GET** /api/v1/auth/otp-device/ | 
[**authOtpDeviceRetrieve**](AuthApi.md#authotpdeviceretrieve) | **GET** /api/v1/auth/otp-device/{id}/ | 
[**authSocialConnectCreate**](AuthApi.md#authsocialconnectcreate) | **POST** /api/v1/auth/social/connect/ | 
[**authSocialCreate**](AuthApi.md#authsocialcreate) | **POST** /api/v1/auth/social/ | 
[**authTokenBlacklistCreate**](AuthApi.md#authtokenblacklistcreate) | **POST** /api/v1/auth/token/blacklist/ | 
[**authTokenCreate**](AuthApi.md#authtokencreate) | **POST** /api/v1/auth/token/ | 
[**authTokenRefreshCreate**](AuthApi.md#authtokenrefreshcreate) | **POST** /api/v1/auth/token/refresh/ | 
[**authTokenVerifyCreate**](AuthApi.md#authtokenverifycreate) | **POST** /api/v1/auth/token/verify/ | 
[**authUserCreate**](AuthApi.md#authusercreate) | **POST** /api/v1/auth/user/ | 
[**authUserPartialUpdate**](AuthApi.md#authuserpartialupdate) | **PATCH** /api/v1/auth/user/{id}/ | 
[**authUserSetPasswordCreate**](AuthApi.md#authusersetpasswordcreate) | **POST** /api/v1/auth/user/{id}/set_password/ | 
[**authUserUpdate**](AuthApi.md#authuserupdate) | **PUT** /api/v1/auth/user/{id}/ | 


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

# **authOtpDeviceConfirmCreate**
> authOtpDeviceConfirmCreate(id, oTPDeviceConfirmRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final String id = id_example; // String | 
final OTPDeviceConfirmRequest oTPDeviceConfirmRequest = ; // OTPDeviceConfirmRequest | 

try {
    api.authOtpDeviceConfirmCreate(id, oTPDeviceConfirmRequest);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authOtpDeviceConfirmCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **oTPDeviceConfirmRequest** | [**OTPDeviceConfirmRequest**](OTPDeviceConfirmRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authOtpDeviceCreate**
> OTPDevice authOtpDeviceCreate(oTPDeviceRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final OTPDeviceRequest oTPDeviceRequest = ; // OTPDeviceRequest | 

try {
    final response = api.authOtpDeviceCreate(oTPDeviceRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authOtpDeviceCreate: $e\n');
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

# **authOtpDeviceDestroy**
> authOtpDeviceDestroy(id)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final String id = id_example; // String | 

try {
    api.authOtpDeviceDestroy(id);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authOtpDeviceDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authOtpDeviceList**
> PaginatedOTPDeviceList authOtpDeviceList(limit, offset)



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
    final response = api.authOtpDeviceList(limit, offset);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authOtpDeviceList: $e\n');
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

# **authOtpDeviceRetrieve**
> OTPDevice authOtpDeviceRetrieve(id)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final String id = id_example; // String | 

try {
    final response = api.authOtpDeviceRetrieve(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authOtpDeviceRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

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

# **authUserCreate**
> UserIdentity authUserCreate(userIdentityRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final UserIdentityRequest userIdentityRequest = ; // UserIdentityRequest | 

try {
    final response = api.authUserCreate(userIdentityRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authUserCreate: $e\n');
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

# **authUserPartialUpdate**
> UserIdentity authUserPartialUpdate(id, patchedUserIdentityRequest)



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
    final response = api.authUserPartialUpdate(id, patchedUserIdentityRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authUserPartialUpdate: $e\n');
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

# **authUserSetPasswordCreate**
> authUserSetPasswordCreate(id, changePasswordRequest)



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
    api.authUserSetPasswordCreate(id, changePasswordRequest);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authUserSetPasswordCreate: $e\n');
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

# **authUserUpdate**
> UserIdentity authUserUpdate(id, userIdentityRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final String id = id_example; // String | 
final UserIdentityRequest userIdentityRequest = ; // UserIdentityRequest | 

try {
    final response = api.authUserUpdate(id, userIdentityRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authUserUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **userIdentityRequest** | [**UserIdentityRequest**](UserIdentityRequest.md)|  | [optional] 

### Return type

[**UserIdentity**](UserIdentity.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

