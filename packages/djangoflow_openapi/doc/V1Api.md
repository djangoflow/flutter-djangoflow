# djangoflow_openapi.api.V1Api

## Load the API package
```dart
import 'package:djangoflow_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AuthOtpCreate**](V1Api.md#v1authotpcreate) | **POST** /api/v1/auth/otp/ | 
[**v1AuthOtpDevicesConfirmCreate**](V1Api.md#v1authotpdevicesconfirmcreate) | **POST** /api/v1/auth/otp-devices/{id}/confirm/ | 
[**v1AuthOtpDevicesCreate**](V1Api.md#v1authotpdevicescreate) | **POST** /api/v1/auth/otp-devices/ | 
[**v1AuthOtpDevicesDestroy**](V1Api.md#v1authotpdevicesdestroy) | **DELETE** /api/v1/auth/otp-devices/{id}/ | 
[**v1AuthOtpDevicesList**](V1Api.md#v1authotpdeviceslist) | **GET** /api/v1/auth/otp-devices/ | 
[**v1AuthOtpDevicesRetrieve**](V1Api.md#v1authotpdevicesretrieve) | **GET** /api/v1/auth/otp-devices/{id}/ | 
[**v1AuthSocialConnectCreate**](V1Api.md#v1authsocialconnectcreate) | **POST** /api/v1/auth/social/connect/ | 
[**v1AuthSocialCreate**](V1Api.md#v1authsocialcreate) | **POST** /api/v1/auth/social/ | 
[**v1AuthTokenBlacklistCreate**](V1Api.md#v1authtokenblacklistcreate) | **POST** /api/v1/auth/token/blacklist/ | 
[**v1AuthTokenCreate**](V1Api.md#v1authtokencreate) | **POST** /api/v1/auth/token/ | 
[**v1AuthTokenRefreshCreate**](V1Api.md#v1authtokenrefreshcreate) | **POST** /api/v1/auth/token/refresh/ | 
[**v1AuthTokenVerifyCreate**](V1Api.md#v1authtokenverifycreate) | **POST** /api/v1/auth/token/verify/ | 
[**v1AuthUsersCreate**](V1Api.md#v1authuserscreate) | **POST** /api/v1/auth/users/ | 
[**v1AuthUsersPartialUpdate**](V1Api.md#v1authuserspartialupdate) | **PATCH** /api/v1/auth/users/{id}/ | 
[**v1AuthUsersRetrieve**](V1Api.md#v1authusersretrieve) | **GET** /api/v1/auth/users/{id}/ | 
[**v1AuthUsersSetPasswordCreate**](V1Api.md#v1authuserssetpasswordcreate) | **POST** /api/v1/auth/users/{id}/set-password/ | 
[**v1AuthUsersTwoFaPartialUpdate**](V1Api.md#v1authuserstwofapartialupdate) | **PATCH** /api/v1/auth/users/{id}/two-fa/ | 
[**v1AuthUsersTwoFaRetrieve**](V1Api.md#v1authuserstwofaretrieve) | **GET** /api/v1/auth/users/{id}/two-fa/ | 
[**v1NotificationsActionCategoriesList**](V1Api.md#v1notificationsactioncategorieslist) | **GET** /api/v1/notifications/action-categories/ | 
[**v1NotificationsDevicesCreate**](V1Api.md#v1notificationsdevicescreate) | **POST** /api/v1/notifications/devices/ | 
[**v1NotificationsDevicesDestroy**](V1Api.md#v1notificationsdevicesdestroy) | **DELETE** /api/v1/notifications/devices/{registration_id}/ | 
[**v1NotificationsDevicesList**](V1Api.md#v1notificationsdeviceslist) | **GET** /api/v1/notifications/devices/ | 
[**v1NotificationsDevicesPartialUpdate**](V1Api.md#v1notificationsdevicespartialupdate) | **PATCH** /api/v1/notifications/devices/{registration_id}/ | 
[**v1NotificationsDevicesRetrieve**](V1Api.md#v1notificationsdevicesretrieve) | **GET** /api/v1/notifications/devices/{registration_id}/ | 
[**v1NotificationsDevicesUpdate**](V1Api.md#v1notificationsdevicesupdate) | **PUT** /api/v1/notifications/devices/{registration_id}/ | 
[**v1RemoteconfigRetrieve**](V1Api.md#v1remoteconfigretrieve) | **GET** /api/v1/remoteconfig/ | 


# **v1AuthOtpCreate**
> OTPObtain v1AuthOtpCreate(oTPObtainRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final OTPObtainRequest oTPObtainRequest = ; // OTPObtainRequest | 

try {
    final response = api.v1AuthOtpCreate(oTPObtainRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthOtpCreate: $e\n');
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

# **v1AuthOtpDevicesConfirmCreate**
> v1AuthOtpDevicesConfirmCreate(id, type, oTPDeviceConfirmRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final String id = id_example; // String | 
final String type = type_example; // String | OTP Device type
final OTPDeviceConfirmRequest oTPDeviceConfirmRequest = ; // OTPDeviceConfirmRequest | 

try {
    api.v1AuthOtpDevicesConfirmCreate(id, type, oTPDeviceConfirmRequest);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthOtpDevicesConfirmCreate: $e\n');
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

# **v1AuthOtpDevicesCreate**
> OTPDevice v1AuthOtpDevicesCreate(oTPDeviceRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final OTPDeviceRequest oTPDeviceRequest = ; // OTPDeviceRequest | 

try {
    final response = api.v1AuthOtpDevicesCreate(oTPDeviceRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthOtpDevicesCreate: $e\n');
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

# **v1AuthOtpDevicesDestroy**
> v1AuthOtpDevicesDestroy(id, type)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final String id = id_example; // String | 
final String type = type_example; // String | OTP Device type

try {
    api.v1AuthOtpDevicesDestroy(id, type);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthOtpDevicesDestroy: $e\n');
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

# **v1AuthOtpDevicesList**
> PaginatedOTPDeviceList v1AuthOtpDevicesList(limit, offset)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final int limit = 56; // int | Number of results to return per page.
final int offset = 56; // int | The initial index from which to return the results.

try {
    final response = api.v1AuthOtpDevicesList(limit, offset);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthOtpDevicesList: $e\n');
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

# **v1AuthOtpDevicesRetrieve**
> OTPDevice v1AuthOtpDevicesRetrieve(id, type)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final String id = id_example; // String | 
final String type = type_example; // String | OTP Device type

try {
    final response = api.v1AuthOtpDevicesRetrieve(id, type);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthOtpDevicesRetrieve: $e\n');
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

# **v1AuthSocialConnectCreate**
> Token v1AuthSocialConnectCreate(socialTokenObtainRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final SocialTokenObtainRequest socialTokenObtainRequest = ; // SocialTokenObtainRequest | 

try {
    final response = api.v1AuthSocialConnectCreate(socialTokenObtainRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthSocialConnectCreate: $e\n');
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

# **v1AuthSocialCreate**
> Token v1AuthSocialCreate(socialTokenObtainRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final SocialTokenObtainRequest socialTokenObtainRequest = ; // SocialTokenObtainRequest | 

try {
    final response = api.v1AuthSocialCreate(socialTokenObtainRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthSocialCreate: $e\n');
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

# **v1AuthTokenBlacklistCreate**
> Token v1AuthTokenBlacklistCreate(tokenBlacklistRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final TokenBlacklistRequest tokenBlacklistRequest = ; // TokenBlacklistRequest | 

try {
    final response = api.v1AuthTokenBlacklistCreate(tokenBlacklistRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthTokenBlacklistCreate: $e\n');
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

# **v1AuthTokenCreate**
> Token v1AuthTokenCreate(tokenObtainRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final TokenObtainRequest tokenObtainRequest = ; // TokenObtainRequest | 

try {
    final response = api.v1AuthTokenCreate(tokenObtainRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthTokenCreate: $e\n');
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

# **v1AuthTokenRefreshCreate**
> Token v1AuthTokenRefreshCreate(tokenRefreshRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final TokenRefreshRequest tokenRefreshRequest = ; // TokenRefreshRequest | 

try {
    final response = api.v1AuthTokenRefreshCreate(tokenRefreshRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthTokenRefreshCreate: $e\n');
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

# **v1AuthTokenVerifyCreate**
> Token v1AuthTokenVerifyCreate(tokenVerifyRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final TokenVerifyRequest tokenVerifyRequest = ; // TokenVerifyRequest | 

try {
    final response = api.v1AuthTokenVerifyCreate(tokenVerifyRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthTokenVerifyCreate: $e\n');
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

# **v1AuthUsersCreate**
> UserIdentity v1AuthUsersCreate(userIdentityRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final UserIdentityRequest userIdentityRequest = ; // UserIdentityRequest | 

try {
    final response = api.v1AuthUsersCreate(userIdentityRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthUsersCreate: $e\n');
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

# **v1AuthUsersPartialUpdate**
> UserIdentity v1AuthUsersPartialUpdate(id, patchedUserIdentityRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final String id = id_example; // String | 
final PatchedUserIdentityRequest patchedUserIdentityRequest = ; // PatchedUserIdentityRequest | 

try {
    final response = api.v1AuthUsersPartialUpdate(id, patchedUserIdentityRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthUsersPartialUpdate: $e\n');
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

# **v1AuthUsersRetrieve**
> UserIdentity v1AuthUsersRetrieve(id)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final String id = id_example; // String | 

try {
    final response = api.v1AuthUsersRetrieve(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthUsersRetrieve: $e\n');
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

# **v1AuthUsersSetPasswordCreate**
> v1AuthUsersSetPasswordCreate(id, changePasswordRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final String id = id_example; // String | 
final ChangePasswordRequest changePasswordRequest = ; // ChangePasswordRequest | 

try {
    api.v1AuthUsersSetPasswordCreate(id, changePasswordRequest);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthUsersSetPasswordCreate: $e\n');
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

# **v1AuthUsersTwoFaPartialUpdate**
> User2FA v1AuthUsersTwoFaPartialUpdate(id, patchedUser2FARequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final String id = id_example; // String | 
final PatchedUser2FARequest patchedUser2FARequest = ; // PatchedUser2FARequest | 

try {
    final response = api.v1AuthUsersTwoFaPartialUpdate(id, patchedUser2FARequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthUsersTwoFaPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **patchedUser2FARequest** | [**PatchedUser2FARequest**](PatchedUser2FARequest.md)|  | [optional] 

### Return type

[**User2FA**](User2FA.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthUsersTwoFaRetrieve**
> User2FA v1AuthUsersTwoFaRetrieve(id)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final String id = id_example; // String | 

try {
    final response = api.v1AuthUsersTwoFaRetrieve(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1AuthUsersTwoFaRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**User2FA**](User2FA.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NotificationsActionCategoriesList**
> List<PushActionCategory> v1NotificationsActionCategoriesList()



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();

try {
    final response = api.v1NotificationsActionCategoriesList();
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1NotificationsActionCategoriesList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;PushActionCategory&gt;**](PushActionCategory.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NotificationsDevicesCreate**
> UserDevice v1NotificationsDevicesCreate(userDeviceRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final UserDeviceRequest userDeviceRequest = ; // UserDeviceRequest | 

try {
    final response = api.v1NotificationsDevicesCreate(userDeviceRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1NotificationsDevicesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userDeviceRequest** | [**UserDeviceRequest**](UserDeviceRequest.md)|  | 

### Return type

[**UserDevice**](UserDevice.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NotificationsDevicesDestroy**
> v1NotificationsDevicesDestroy(registrationId)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final String registrationId = registrationId_example; // String | 

try {
    api.v1NotificationsDevicesDestroy(registrationId);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1NotificationsDevicesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NotificationsDevicesList**
> PaginatedUserDeviceList v1NotificationsDevicesList(limit, offset)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final int limit = 56; // int | Number of results to return per page.
final int offset = 56; // int | The initial index from which to return the results.

try {
    final response = api.v1NotificationsDevicesList(limit, offset);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1NotificationsDevicesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 

### Return type

[**PaginatedUserDeviceList**](PaginatedUserDeviceList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NotificationsDevicesPartialUpdate**
> UserDevice v1NotificationsDevicesPartialUpdate(registrationId, patchedUserDeviceRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final String registrationId = registrationId_example; // String | 
final PatchedUserDeviceRequest patchedUserDeviceRequest = ; // PatchedUserDeviceRequest | 

try {
    final response = api.v1NotificationsDevicesPartialUpdate(registrationId, patchedUserDeviceRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1NotificationsDevicesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationId** | **String**|  | 
 **patchedUserDeviceRequest** | [**PatchedUserDeviceRequest**](PatchedUserDeviceRequest.md)|  | [optional] 

### Return type

[**UserDevice**](UserDevice.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NotificationsDevicesRetrieve**
> UserDevice v1NotificationsDevicesRetrieve(registrationId)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final String registrationId = registrationId_example; // String | 

try {
    final response = api.v1NotificationsDevicesRetrieve(registrationId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1NotificationsDevicesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationId** | **String**|  | 

### Return type

[**UserDevice**](UserDevice.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NotificationsDevicesUpdate**
> UserDevice v1NotificationsDevicesUpdate(registrationId, userDeviceRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final String registrationId = registrationId_example; // String | 
final UserDeviceRequest userDeviceRequest = ; // UserDeviceRequest | 

try {
    final response = api.v1NotificationsDevicesUpdate(registrationId, userDeviceRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1NotificationsDevicesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationId** | **String**|  | 
 **userDeviceRequest** | [**UserDeviceRequest**](UserDeviceRequest.md)|  | 

### Return type

[**UserDevice**](UserDevice.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1RemoteconfigRetrieve**
> RemoteConfig v1RemoteconfigRetrieve(part_, params)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getV1Api();
final String part_ = part__example; // String | Name of the configuration part.
final Map<String, Object> params = Object; // Map<String, Object> | json-encoded object of attribute key value pairs

try {
    final response = api.v1RemoteconfigRetrieve(part_, params);
    print(response);
} catch on DioError (e) {
    print('Exception when calling V1Api->v1RemoteconfigRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **part_** | **String**| Name of the configuration part. | 
 **params** | [**Map&lt;String, Object&gt;**](Object.md)| json-encoded object of attribute key value pairs | [optional] 

### Return type

[**RemoteConfig**](RemoteConfig.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

