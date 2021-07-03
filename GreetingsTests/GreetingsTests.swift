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

    func testGreetingsWithEmptyStringSaysGdayMate() {
        // "A bug is just a test that hasn't been written yet."
        //
        // When you discover a bug in your code, start by adding a test that reproduces it.
        // Fixing the bug then becomes a matter of making the test pass: Red, Green, Refactor.
        XCTAssertEqual(greetings(userName: ""), "G'day, mate!")
    }
}
