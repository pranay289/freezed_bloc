import UIKit
import Flutter
import Toast_Swift

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool { 
      let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
      let toastChannel = FlutterMethodChannel(name: "MY_CHANNEL",
                                                       binaryMessenger: controller.binaryMessenger)
      prepareMethodHandler(deviceChannel: toastChannel)
            
      
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func prepareMethodHandler(deviceChannel: FlutterMethodChannel) {
            deviceChannel.setMethodCallHandler({
                (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
                if call.method == "showToast" {
                    self.window.makeToast(call.arguments as! String)
                    result(true)
                }else{
                   result(false)
                }
         
            })
  }
    
    
}

extension UIViewController  {
  func showToast(message : String, font: UIFont) {

        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
             toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}
