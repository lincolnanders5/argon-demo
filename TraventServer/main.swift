//
//  main.swift
//  TraventServer
//
//  Created by Lincoln Anders on 12/20/21.
//

import Foundation
import ArgonServer
import Fluent
// Import desired driver (hopefully here only?)
import FluentPostgresDriver 

let db: DatabaseConfigurationFactory =
	.postgres(hostname: "127.0.0.1", username: "postgres", password: "")

let c = Config()
let server = ARServer(routes: c.routes).config { (_, app) in
	app!.databases.use(db, as: .psql)
}

server.listen()
