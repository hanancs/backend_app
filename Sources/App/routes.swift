import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("app") { req async -> String in
        "app, world!"
    }
}
