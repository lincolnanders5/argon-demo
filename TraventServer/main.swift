//
//  main.swift
//  TraventServer
//
//  Created by Lincoln Anders on 12/20/21.
//

import Foundation
import ArgonServer

let c = Config()
let server = ARServer(routes: c.routes)

server.listen()
