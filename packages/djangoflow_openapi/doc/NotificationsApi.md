# djangoflow_openapi.api.NotificationsApi

## Load the API package
```dart
import 'package:djangoflow_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notificationsActionCategoriesList**](NotificationsApi.md#notificationsactioncategorieslist) | **GET** /api/v1/notifications/action-categories/ | 
[**notificationsDevicesCreate**](NotificationsApi.md#notificationsdevicescreate) | **POST** /api/v1/notifications/devices/ | 
[**notificationsDevicesDestroy**](NotificationsApi.md#notificationsdevicesdestroy) | **DELETE** /api/v1/notifications/devices/{registration_id}/ | 
[**notificationsDevicesList**](NotificationsApi.md#notificationsdeviceslist) | **GET** /api/v1/notifications/devices/ | 
[**notificationsDevicesPartialUpdate**](NotificationsApi.md#notificationsdevicespartialupdate) | **PATCH** /api/v1/notifications/devices/{registration_id}/ | 
[**notificationsDevicesRetrieve**](NotificationsApi.md#notificationsdevicesretrieve) | **GET** /api/v1/notifications/devices/{registration_id}/ | 
[**notificationsDevicesUpdate**](NotificationsApi.md#notificationsdevicesupdate) | **PUT** /api/v1/notifications/devices/{registration_id}/ | 


# **notificationsActionCategoriesList**
> List<PushActionCategory> notificationsActionCategoriesList()



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getNotificationsApi();

try {
    final response = api.notificationsActionCategoriesList();
    print(response);
} catch on DioError (e) {
    print('Exception when calling NotificationsApi->notificationsActionCategoriesList: $e\n');
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

# **notificationsDevicesCreate**
> UserDevice notificationsDevicesCreate(userDeviceRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getNotificationsApi();
final UserDeviceRequest userDeviceRequest = ; // UserDeviceRequest | 

try {
    final response = api.notificationsDevicesCreate(userDeviceRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling NotificationsApi->notificationsDevicesCreate: $e\n');
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

# **notificationsDevicesDestroy**
> notificationsDevicesDestroy(registrationId)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getNotificationsApi();
final String registrationId = registrationId_example; // String | 

try {
    api.notificationsDevicesDestroy(registrationId);
} catch on DioError (e) {
    print('Exception when calling NotificationsApi->notificationsDevicesDestroy: $e\n');
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

# **notificationsDevicesList**
> List<UserDevice> notificationsDevicesList()



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getNotificationsApi();

try {
    final response = api.notificationsDevicesList();
    print(response);
} catch on DioError (e) {
    print('Exception when calling NotificationsApi->notificationsDevicesList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UserDevice&gt;**](UserDevice.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsDevicesPartialUpdate**
> UserDevice notificationsDevicesPartialUpdate(registrationId, patchedUserDeviceRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getNotificationsApi();
final String registrationId = registrationId_example; // String | 
final PatchedUserDeviceRequest patchedUserDeviceRequest = ; // PatchedUserDeviceRequest | 

try {
    final response = api.notificationsDevicesPartialUpdate(registrationId, patchedUserDeviceRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling NotificationsApi->notificationsDevicesPartialUpdate: $e\n');
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

# **notificationsDevicesRetrieve**
> UserDevice notificationsDevicesRetrieve(registrationId)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getNotificationsApi();
final String registrationId = registrationId_example; // String | 

try {
    final response = api.notificationsDevicesRetrieve(registrationId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling NotificationsApi->notificationsDevicesRetrieve: $e\n');
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

# **notificationsDevicesUpdate**
> UserDevice notificationsDevicesUpdate(registrationId, userDeviceRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getNotificationsApi();
final String registrationId = registrationId_example; // String | 
final UserDeviceRequest userDeviceRequest = ; // UserDeviceRequest | 

try {
    final response = api.notificationsDevicesUpdate(registrationId, userDeviceRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling NotificationsApi->notificationsDevicesUpdate: $e\n');
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

