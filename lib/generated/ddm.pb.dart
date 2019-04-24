///
//  Generated code. Do not modify.
//  source: ddm.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ddm.pbenum.dart';

export 'ddm.pbenum.dart';

class SwitchInputRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwitchInputRequest', package: const $pb.PackageName('ddm'))
    ..e<SwitchInputRequest_InputType>(1, 'input', $pb.PbFieldType.OE, SwitchInputRequest_InputType.USB_C, SwitchInputRequest_InputType.valueOf, SwitchInputRequest_InputType.values)
    ..hasRequiredFields = false
  ;

  SwitchInputRequest() : super();
  SwitchInputRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SwitchInputRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SwitchInputRequest clone() => SwitchInputRequest()..mergeFromMessage(this);
  SwitchInputRequest copyWith(void Function(SwitchInputRequest) updates) => super.copyWith((message) => updates(message as SwitchInputRequest));
  $pb.BuilderInfo get info_ => _i;
  static SwitchInputRequest create() => SwitchInputRequest();
  SwitchInputRequest createEmptyInstance() => create();
  static $pb.PbList<SwitchInputRequest> createRepeated() => $pb.PbList<SwitchInputRequest>();
  static SwitchInputRequest getDefault() => _defaultInstance ??= create()..freeze();
  static SwitchInputRequest _defaultInstance;

  SwitchInputRequest_InputType get input => $_getN(0);
  set input(SwitchInputRequest_InputType v) { setField(1, v); }
  $core.bool hasInput() => $_has(0);
  void clearInput() => clearField(1);
}

class SwitchInputResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwitchInputResponse', package: const $pb.PackageName('ddm'))
    ..aOB(1, 'okay')
    ..aOS(2, 'error')
    ..hasRequiredFields = false
  ;

  SwitchInputResponse() : super();
  SwitchInputResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SwitchInputResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SwitchInputResponse clone() => SwitchInputResponse()..mergeFromMessage(this);
  SwitchInputResponse copyWith(void Function(SwitchInputResponse) updates) => super.copyWith((message) => updates(message as SwitchInputResponse));
  $pb.BuilderInfo get info_ => _i;
  static SwitchInputResponse create() => SwitchInputResponse();
  SwitchInputResponse createEmptyInstance() => create();
  static $pb.PbList<SwitchInputResponse> createRepeated() => $pb.PbList<SwitchInputResponse>();
  static SwitchInputResponse getDefault() => _defaultInstance ??= create()..freeze();
  static SwitchInputResponse _defaultInstance;

  $core.bool get okay => $_get(0, false);
  set okay($core.bool v) { $_setBool(0, v); }
  $core.bool hasOkay() => $_has(0);
  void clearOkay() => clearField(1);

  $core.String get error => $_getS(1, '');
  set error($core.String v) { $_setString(1, v); }
  $core.bool hasError() => $_has(1);
  void clearError() => clearField(2);
}

