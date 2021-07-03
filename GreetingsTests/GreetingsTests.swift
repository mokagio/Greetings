import XCTest
@testable import Greetings

class GreetingsTests: XCTestCase {

    func testGreetingWithNoUserSaysGdayMate() {
        // Arrange: prepare the input
        let userName: String? = .none

        // Act: produce the output
        let greeting = greetings(userName: userName)

        // Assert: check it matches your expectation
        XCTAssertEqual(greeting, "G'day, mate!")
    }

    func testGreetingsWithUserNameSaysGdayUserName() {
        // Arrange, Act, Assert is an excellent way to organize a test, but it's also good to be
        // concise if you can
        XCTAssertEqual(greetings(userName: "Ada"), "G'day, Ada!")
    }
}
