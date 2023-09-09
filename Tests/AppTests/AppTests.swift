@testable import App
import XCTVapor

final class AppTests: XCTestCase {
    func testappWorld() async throws {
        let app = Application(.testing)
        defer { app.shutdown() }
        try await configure(app)

        try app.test(.GET, "app", afterResponse: { res in
            XCTAssertEqual(res.status, .ok)
            XCTAssertEqual(res.body.string, "app, world!")
        })
    }
}
