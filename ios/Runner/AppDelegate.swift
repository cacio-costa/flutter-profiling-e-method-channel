import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
      ) -> Bool {
        GeneratedPluginRegistrant.register(with: self)

        let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
        let batteryChannel = FlutterMethodChannel(name: "br.com.alura/bateria",
                                                  binaryMessenger: controller.binaryMessenger)
        batteryChannel.setMethodCallHandler({
          (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
          guard call.method == "getNivelDeBateria" else {
            result(FlutterMethodNotImplemented)
            return
          }
          self.receiveBatteryLevel(result: result)
        })

        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
      }

      private func receiveBatteryLevel(result: FlutterResult) {
        let nivel = getNivelDeBateria()
        result(Int(nivel * 100))
      }

      private func getNivelDeBateria() -> Float {
        #if targetEnvironment(simulator)
          return 0.75 // Simula 75% de bateria no simulador
        #else
          UIDevice.current.isBatteryMonitoringEnabled = true
          return UIDevice.current.batteryLevel
        #endif
      }
}
