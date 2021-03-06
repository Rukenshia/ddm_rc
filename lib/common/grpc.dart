import 'package:grpc/grpc.dart';

class GrpcClientSingleton {
  ClientChannel client;
  static final GrpcClientSingleton _singleton =
      new GrpcClientSingleton._internal();

  factory GrpcClientSingleton() => _singleton;

  GrpcClientSingleton._internal() {
    client = ClientChannel(
        "192.168.86.27", // Your IP here, localhost might not work.
        port: 7777,
        options: ChannelOptions(
          //TODO: Change to secure with server certificates
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 1),
        ));
  }
}
