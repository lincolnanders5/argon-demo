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
        ARListView(notes, content: { note in
            HStack {
                Text(note.title ?? "title")
                Spacer()
                VStack {
                    Text(note.createdAt?.relative ?? "created")
                        .font(.system(size: 12, weight: .light))
                    Text(note.updatedAt?.relative ?? "updated")
                        .font(.system(size: 12, weight: .light))
                }
            }
        }, populate: {
            await Notification.fetchInto(&notes)
        }).body
    }
}

struct NotificationListView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationListView()
    }
}
