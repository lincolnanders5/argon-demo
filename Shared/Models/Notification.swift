//
//  Notification.swift
//  Travent
//
//  Created by Lincoln Anders on 2/7/22.
//

import Foundation
import Argon
import SerializedSwift

final class Notification: ARModel {
    static var baseURL = "http://192.168.1.151:3000/notifications"
    @Serialized var title: String?
    @Serialized var body:  String?
    
    public required init() {}
}
