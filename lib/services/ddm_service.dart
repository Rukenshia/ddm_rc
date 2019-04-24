import 'package:ddm_rc/common/grpc.dart';
import 'package:ddm_rc/generated/ddm.pb.dart';
import 'package:ddm_rc/generated/ddm.pbgrpc.dart';

class DisplayManagerService {
  static Future<SwitchInputResponse> switchInput(
      SwitchInputRequest_InputType type) async {
    var client = DisplayManagerClient(GrpcClientSingleton().client);
    return await client.switchInput(SwitchInputRequest()..input = type);
  }
}
