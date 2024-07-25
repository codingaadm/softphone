import 'package:get/instance_manager.dart';
import 'package:softphone/new/controller/auth_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
  }
}