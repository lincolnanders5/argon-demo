//
//  User.swift
//  Travent
//
//  Created by Lincoln Anders on 12/20/21.
//

import Foundation
import Argon
import SerializedSwift

final class User: ARModel {
    static var baseURL = "http://192.168.1.151:3000/users"
	@Serialized var email: String?
	
	public required init() {}
}

final class Admin: ARModel {
    static var baseURL = "http://192.168.1.151:3000/admins"
    @Serialized var email: String?
    
    public required init() {}
}
