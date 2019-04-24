///
//  Generated code. Do not modify.
//  source: ddm.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class SwitchInputRequest_InputType extends $pb.ProtobufEnum {
  static const SwitchInputRequest_InputType USB_C = SwitchInputRequest_InputType._(0, 'USB_C');
  static const SwitchInputRequest_InputType DP1 = SwitchInputRequest_InputType._(1, 'DP1');

  static const $core.List<SwitchInputRequest_InputType> values = <SwitchInputRequest_InputType> [
    USB_C,
    DP1,
  ];

  static final $core.Map<$core.int, SwitchInputRequest_InputType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SwitchInputRequest_InputType valueOf($core.int value) => _byValue[value];

  const SwitchInputRequest_InputType._($core.int v, $core.String n) : super(v, n);
}

