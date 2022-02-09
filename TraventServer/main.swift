//
//  main.swift
//  TraventServer
//
//  Created by Lincoln Anders on 12/20/21.
//

import Foundation
import Argon
import ArgonServer
import Fluent
// Import desired driver (hopefully here only?)
import FluentPostgresDriver 

let db: DatabaseConfigurationFactory =
	.postgres(hostname: "127.0.0.1", username: "postgres", password: "")

let server = ARServer(routes: Config.routes).config { (_, app) in
	app!.databases.use(db, as: .psql)
}

server.listen()
