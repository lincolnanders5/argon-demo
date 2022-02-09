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
    @Serialized var title: String?
    @Serialized var body:  String?
    
    public required init() {}
}
