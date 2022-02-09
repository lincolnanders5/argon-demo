//
//  Config.swift
//  Travent
//
//  Created by Lincoln Anders on 12/20/21.
//

import Foundation
import Argon

public struct Config: ARConfig {
	public static let routes = [
        Post.routes()
	]
    
    public static let wc = WebCommunicator("http://192.168.1.151:3000")
}
