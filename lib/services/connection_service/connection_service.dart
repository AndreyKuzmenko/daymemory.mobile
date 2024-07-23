import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/services/async_service_initializer.dart';

import 'connectivity_type.dart';

abstract class IConnectionService {
  ConnectivityType get state;

  bool get isOnline;

  set dispatch(Function(dynamic) dispatch);
}

class ConnectionService implements IConnectionService, IAsyncServiceInitializer<IConnectionService> {
  late Connectivity _connectivity;
  ConnectivityType? _state;
  Function(dynamic)? _dispatch;

  @override
  ConnectivityType get state => _state!;

  @override
  bool get isOnline => _state == ConnectivityType.connected;

  @override
  set dispatch(Function(dynamic) dispatch) {
    _dispatch = dispatch;
    _dispatchUpdates();
  }

  @override
  Future<IConnectionService> init() async {
    _connectivity = Connectivity();

    _connectivity.onConnectivityChanged.listen((List<ConnectivityResult> result) {
      _handleConnectivityResult(result);
    });

    _handleConnectivityResult(
      await _connectivity.checkConnectivity(),
    );

    // _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
    //   _handleConnectivityResult(result);
    // });
    return this;
  }

  void _handleConnectivityResult(List<ConnectivityResult> result) {
    for (var type in result) {
      ConnectivityType internalType;
      switch (type) {
        case ConnectivityResult.wifi:
          internalType = ConnectivityType.connected;
          break;
        case ConnectivityResult.mobile:
          internalType = ConnectivityType.connected;
          break;
        default:
          internalType = ConnectivityType.disconnected;
          break;
      }
      if (internalType != _state) {
        _state = internalType;
        _dispatchUpdates();
      }
    }
  }

  void _dispatchUpdates() {
    if (_dispatch != null) {
      _dispatch!(ConnectivityChangedAction(isOnline: _state == ConnectivityType.connected));
    }
  }
}
