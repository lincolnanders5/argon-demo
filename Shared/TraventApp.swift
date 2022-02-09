//
//  TraventApp.swift
//  Shared
//
//  Created by Lincoln Anders on 12/20/21.
//

import SwiftUI
import Argon
#if os(macOS)
import ArgonServer
#endif

@main
struct TraventApp: App {
    var body: some Scene {
        WindowGroup {
//            NotificationListView()
            NavigationView {
                PostListView()
                #if os(macOS)
                .task { // Start client server listening in background
                    DispatchQueue.global(qos: .background).async {
                        let s = ARServer(routes: Config.routes)
                        s.listen()
                    }
                }
                #endif
            }
        }
    }
}
