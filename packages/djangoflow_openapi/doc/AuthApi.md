# djangoflow_openapi.api.AuthApi

## Load the API package
```dart
import 'package:djangoflow_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authChangeCreate**](AuthApi.md#authchangecreate) | **POST** /api/v1/auth/change/ | 
[**authConnectCreate**](AuthApi.md#authconnectcreate) | **POST** /api/v1/auth/connect/ | 
[**authInviteCreate**](AuthApi.md#authinvitecreate) | **POST** /api/v1/auth/invite/ | 
[**authOtpCreate**](AuthApi.md#authotpcreate) | **POST** /api/v1/auth/otp/ | 
[**authSetPasswordCreate**](AuthApi.md#authsetpasswordcreate) | **POST** /api/v1/auth/set-password/ | 
[**authSignupCreate**](AuthApi.md#authsignupcreate) | **POST** /api/v1/auth/signup/ | 
[**authSocialConnectCreate**](AuthApi.md#authsocialconnectcreate) | **POST** /api/v1/auth/social/connect/ | 
[**authSocialCreate**](AuthApi.md#authsocialcreate) | **POST** /api/v1/auth/social/ | 
[**authSocialOauth1ConnectCreate**](AuthApi.md#authsocialoauth1connectcreate) | **POST** /api/v1/auth/social/oauth1/connect/ | 
[**authSocialOauth1Create**](AuthApi.md#authsocialoauth1create) | **POST** /api/v1/auth/social/oauth1/ | 
[**authTokenBlacklistCreate**](AuthApi.md#authtokenblacklistcreate) | **POST** /api/v1/auth/token/blacklist/ | 
[**authTokenCreate**](AuthApi.md#authtokencreate) | **POST** /api/v1/auth/token/ | 
[**authTokenRefreshCreate**](AuthApi.md#authtokenrefreshcreate) | **POST** /api/v1/auth/token/refresh/ | 
[**authTokenVerifyCreate**](AuthApi.md#authtokenverifycreate) | **POST** /api/v1/auth/token/verify/ | 
[**authUnlinkCreate**](AuthApi.md#authunlinkcreate) | **POST** /api/v1/auth/unlink/ | 


# **authChangeCreate**
> Change authChangeCreate(changeRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final ChangeRequest changeRequest = ; // ChangeRequest | 

try {
    final response = api.authChangeCreate(changeRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authChangeCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changeRequest** | [**ChangeRequest**](ChangeRequest.md)|  | [optional] 

### Return type

[**Change**](Change.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authConnectCreate**
> Connect authConnectCreate(connectRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final ConnectRequest connectRequest = ; // ConnectRequest | 

try {
    final response = api.authConnectCreate(connectRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authConnectCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectRequest** | [**ConnectRequest**](ConnectRequest.md)|  | [optional] 

### Return type

[**Connect**](Connect.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authInviteCreate**
> Invite authInviteCreate(inviteRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final InviteRequest inviteRequest = ; // InviteRequest | 

try {
    final response = api.authInviteCreate(inviteRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authInviteCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteRequest** | [**InviteRequest**](InviteRequest.md)|  | [optional] 

### Return type

[**Invite**](Invite.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authOtpCreate**
> authOtpCreate(oTPObtainRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final OTPObtainRequest oTPObtainRequest = ; // OTPObtainRequest | 

try {
    api.authOtpCreate(oTPObtainRequest);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authOtpCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oTPObtainRequest** | [**OTPObtainRequest**](OTPObtainRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authSetPasswordCreate**
> authSetPasswordCreate(setPasswordRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final SetPasswordRequest setPasswordRequest = ; // SetPasswordRequest | 

try {
    api.authSetPasswordCreate(setPasswordRequest);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authSetPasswordCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setPasswordRequest** | [**SetPasswordRequest**](SetPasswordRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authSignupCreate**
> Signup authSignupCreate(signupRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final SignupRequest signupRequest = ; // SignupRequest | 

try {
    final response = api.authSignupCreate(signupRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authSignupCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signupRequest** | [**SignupRequest**](SignupRequest.md)|  | [optional] 

### Return type

[**Signup**](Signup.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
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

# **authSocialOauth1ConnectCreate**
> Token authSocialOauth1ConnectCreate(socialOAuth1TokenObtainRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final SocialOAuth1TokenObtainRequest socialOAuth1TokenObtainRequest = ; // SocialOAuth1TokenObtainRequest | 

try {
    final response = api.authSocialOauth1ConnectCreate(socialOAuth1TokenObtainRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authSocialOauth1ConnectCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialOAuth1TokenObtainRequest** | [**SocialOAuth1TokenObtainRequest**](SocialOAuth1TokenObtainRequest.md)|  | 

### Return type

[**Token**](Token.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authSocialOauth1Create**
> Token authSocialOauth1Create(socialOAuth1TokenObtainRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final SocialOAuth1TokenObtainRequest socialOAuth1TokenObtainRequest = ; // SocialOAuth1TokenObtainRequest | 

try {
    final response = api.authSocialOauth1Create(socialOAuth1TokenObtainRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authSocialOauth1Create: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialOAuth1TokenObtainRequest** | [**SocialOAuth1TokenObtainRequest**](SocialOAuth1TokenObtainRequest.md)|  | 

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

# **authUnlinkCreate**
> Unlink authUnlinkCreate(unlinkRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getAuthApi();
final UnlinkRequest unlinkRequest = ; // UnlinkRequest | 

try {
    final response = api.authUnlinkCreate(unlinkRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authUnlinkCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unlinkRequest** | [**UnlinkRequest**](UnlinkRequest.md)|  | [optional] 

### Return type

[**Unlink**](Unlink.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

