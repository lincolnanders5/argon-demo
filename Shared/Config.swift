//
//  Config.swift
//  Travent
//
//  Created by Lincoln Anders on 12/20/21.
//

import Foundation
import Argon

public struct Config {
	let routes = [
		User.routes(),
		Admin.routes()
	]
}
