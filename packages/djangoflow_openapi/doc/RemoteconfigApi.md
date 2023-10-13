# djangoflow_openapi.api.RemoteconfigApi

## Load the API package
```dart
import 'package:djangoflow_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**remoteconfigRetrieve**](RemoteconfigApi.md#remoteconfigretrieve) | **GET** /api/v1/remoteconfig/ | 


# **remoteconfigRetrieve**
> RemoteConfig remoteconfigRetrieve(part_, params)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = DjangoflowOpenapi().getRemoteconfigApi();
final String part_ = part__example; // String | Name of the configuration part.
final Map<String, Object> params = Object; // Map<String, Object> | json-encoded object of attribute key value pairs

try {
    final response = api.remoteconfigRetrieve(part_, params);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RemoteconfigApi->remoteconfigRetrieve: $e\n');
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

