import SwiftUI

@available(iOS 14.0, *)
struct Application: App {
    var body: some Scene {
        WindowGroup{
            ContentView()
        }
        
    }
}

@main
struct ApplicationWrapper {
    static func main() {
        if #available(iOS 14.0, *) {
            Application.main()
        }
        else {
            UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, NSStringFromClass(AppDelegate.self))
        }
    }
}

class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(
        _: UIApplication,
        didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)

        window.rootViewController = UIHostingController(
            rootView: ContentView()
        )
        self.window = window
        window.makeKeyAndVisible()
        return true
    }
}
