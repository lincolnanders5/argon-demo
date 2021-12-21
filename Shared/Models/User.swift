//
//  User.swift
//  Travent
//
//  Created by Lincoln Anders on 12/20/21.
//

import Foundation
import Argon
import SerializedSwift

open class User: ARModel {
	@Serialized var email: String?
	
	public required init() {}
}
