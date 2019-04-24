///
//  Generated code. Do not modify.
//  source: ddm.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'ddm.pb.dart';
export 'ddm.pb.dart';

class DisplayManagerClient extends $grpc.Client {
  static final _$switchInput =
      $grpc.ClientMethod<SwitchInputRequest, SwitchInputResponse>(
          '/ddm.DisplayManager/SwitchInput',
          (SwitchInputRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              SwitchInputResponse.fromBuffer(value));

  DisplayManagerClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<SwitchInputResponse> switchInput(
      SwitchInputRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$switchInput, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class DisplayManagerServiceBase extends $grpc.Service {
  $core.String get $name => 'ddm.DisplayManager';

  DisplayManagerServiceBase() {
    $addMethod($grpc.ServiceMethod<SwitchInputRequest, SwitchInputResponse>(
        'SwitchInput',
        switchInput_Pre,
        false,
        false,
        ($core.List<$core.int> value) => SwitchInputRequest.fromBuffer(value),
        (SwitchInputResponse value) => value.writeToBuffer()));
  }

  $async.Future<SwitchInputResponse> switchInput_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return switchInput(call, await request);
  }

  $async.Future<SwitchInputResponse> switchInput(
      $grpc.ServiceCall call, SwitchInputRequest request);
}
