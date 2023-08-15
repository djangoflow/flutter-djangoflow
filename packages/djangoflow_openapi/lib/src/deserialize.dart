import 'package:djangoflow_openapi/src/model/change.dart';
import 'package:djangoflow_openapi/src/model/change_request.dart';
import 'package:djangoflow_openapi/src/model/connect.dart';
import 'package:djangoflow_openapi/src/model/connect_request.dart';
import 'package:djangoflow_openapi/src/model/error.dart';
import 'package:djangoflow_openapi/src/model/error_response.dart';
import 'package:djangoflow_openapi/src/model/invite.dart';
import 'package:djangoflow_openapi/src/model/invite_request.dart';
import 'package:djangoflow_openapi/src/model/message.dart';
import 'package:djangoflow_openapi/src/model/message_image.dart';
import 'package:djangoflow_openapi/src/model/message_request.dart';
import 'package:djangoflow_openapi/src/model/message_seen.dart';
import 'package:djangoflow_openapi/src/model/message_seen_request.dart';
import 'package:djangoflow_openapi/src/model/otp_obtain_request.dart';
import 'package:djangoflow_openapi/src/model/paginated_message_image_list.dart';
import 'package:djangoflow_openapi/src/model/paginated_message_list.dart';
import 'package:djangoflow_openapi/src/model/paginated_room_list.dart';
import 'package:djangoflow_openapi/src/model/paginated_user_device_list.dart';
import 'package:djangoflow_openapi/src/model/patched_message_request.dart';
import 'package:djangoflow_openapi/src/model/patched_room_request.dart';
import 'package:djangoflow_openapi/src/model/patched_user_device_request.dart';
import 'package:djangoflow_openapi/src/model/push_action.dart';
import 'package:djangoflow_openapi/src/model/push_action_category.dart';
import 'package:djangoflow_openapi/src/model/room.dart';
import 'package:djangoflow_openapi/src/model/room_request.dart';
import 'package:djangoflow_openapi/src/model/room_user.dart';
import 'package:djangoflow_openapi/src/model/set_password_request.dart';
import 'package:djangoflow_openapi/src/model/signup.dart';
import 'package:djangoflow_openapi/src/model/signup_request.dart';
import 'package:djangoflow_openapi/src/model/social_o_auth1_token_obtain_request.dart';
import 'package:djangoflow_openapi/src/model/social_token_obtain_request.dart';
import 'package:djangoflow_openapi/src/model/token.dart';
import 'package:djangoflow_openapi/src/model/token_blacklist_request.dart';
import 'package:djangoflow_openapi/src/model/token_obtain_request.dart';
import 'package:djangoflow_openapi/src/model/token_refresh_request.dart';
import 'package:djangoflow_openapi/src/model/token_verify_request.dart';
import 'package:djangoflow_openapi/src/model/unlink.dart';
import 'package:djangoflow_openapi/src/model/unlink_request.dart';
import 'package:djangoflow_openapi/src/model/user_device.dart';
import 'package:djangoflow_openapi/src/model/user_device_request.dart';
import 'package:djangoflow_openapi/src/model/user_name.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

  ReturnType deserialize<ReturnType, BaseType>(dynamic value, String targetType, {bool growable= true}) {
      switch (targetType) {
        case 'String':
          return '$value' as ReturnType;
        case 'int':
          return (value is int ? value : int.parse('$value')) as ReturnType;
        case 'bool':
          if (value is bool) {
            return value as ReturnType;
          }
          final valueString = '$value'.toLowerCase();
          return (valueString == 'true' || valueString == '1') as ReturnType;
        case 'double':
          return (value is double ? value : double.parse('$value')) as ReturnType;
        case 'Change':
          return Change.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChangeRequest':
          return ChangeRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Connect':
          return Connect.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ConnectRequest':
          return ConnectRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Error':
          return Error.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ErrorResponse':
          return ErrorResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Invite':
          return Invite.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InviteRequest':
          return InviteRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Message':
          return Message.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MessageImage':
          return MessageImage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MessageRequest':
          return MessageRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MessageSeen':
          return MessageSeen.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MessageSeenRequest':
          return MessageSeenRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OTPObtainRequest':
          return OTPObtainRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedMessageImageList':
          return PaginatedMessageImageList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedMessageList':
          return PaginatedMessageList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedRoomList':
          return PaginatedRoomList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedUserDeviceList':
          return PaginatedUserDeviceList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedMessageRequest':
          return PatchedMessageRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedRoomRequest':
          return PatchedRoomRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedUserDeviceRequest':
          return PatchedUserDeviceRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PushAction':
          return PushAction.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PushActionCategory':
          return PushActionCategory.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Room':
          return Room.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RoomRequest':
          return RoomRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RoomUser':
          return RoomUser.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SetPasswordRequest':
          return SetPasswordRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Signup':
          return Signup.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SignupRequest':
          return SignupRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SocialOAuth1TokenObtainRequest':
          return SocialOAuth1TokenObtainRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SocialTokenObtainProviderEnum':
          
          
        case 'SocialTokenObtainRequest':
          return SocialTokenObtainRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Token':
          return Token.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TokenBlacklistRequest':
          return TokenBlacklistRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TokenObtainRequest':
          return TokenObtainRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TokenRefreshRequest':
          return TokenRefreshRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TokenVerifyRequest':
          return TokenVerifyRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TypeEnum':
          
          
        case 'Unlink':
          return Unlink.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UnlinkRequest':
          return UnlinkRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserDevice':
          return UserDevice.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserDeviceRequest':
          return UserDeviceRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserName':
          return UserName.fromJson(value as Map<String, dynamic>) as ReturnType;
        default:
          RegExpMatch? match;

          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toList(growable: growable) as ReturnType;
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toSet() as ReturnType;
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return Map<dynamic, BaseType>.fromIterables(
              value.keys,
              value.values.map((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable)),
            ) as ReturnType;
          }
          break;
    } 
    throw Exception('Cannot deserialize');
  }