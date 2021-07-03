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

// I like to start working on code in the same file as the test, so I don't have to move between
// files or editor panes.
func greetings(userName: String?) -> String {
    // Once in the green state, we can eliminate duplication and refactor the first implementation
    // we wrote. —Red, Green, Refactor
    return "G'day, \(userName.map { $0 } ?? "mate")!"
}
