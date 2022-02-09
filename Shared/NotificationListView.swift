//
//  NotificationListView.swift
//  Travent
//
//  Created by Lincoln Anders on 2/7/22.
//

import Argon
import SwiftUI

struct NotificationListView: View {
    @State var notes: [Notification]?
    
    var body: some View {
        // TODO: Consolidate into helper view structure
        ARListView(&notes) { note in
            HStack {
                Text(note.title ?? "title")
                ZStack {
                    Text(note.createdAt?.relative ?? "created")
                    Text(note.updatedAt?.relative ?? "updated")
                }
            }
        }.body
    }
}

struct NotificationListView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationListView()
    }
}
