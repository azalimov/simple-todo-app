
import SwiftUI
import FirebaseCore

@main
struct simple_todo_appApp: App {
    
    init(){
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}




