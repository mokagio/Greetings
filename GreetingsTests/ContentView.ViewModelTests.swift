import XCTest
@testable import Greetings

class ContentView_ViewModelTests: XCTestCase {

    func testGreetingWithNoUserSaysGdayMate() {
        // Arrange: prepare the input
        let viewModel = ContentView.ViewModel(userRepository: UserRepositoryDouble(user: .none))

        // Act: produce the output
        let greeting = viewModel.greetings

        // Assert: check it matches your expectation
        XCTAssertEqual(greeting, "G'day, mate!")
    }

    func testGreetingsWithUserNameSaysGdayUserName() {
        let viewModel = ContentView.ViewModel(userRepository: UserRepositoryDouble(user: User(name: "Ada")))

        XCTAssertEqual(viewModel.greetings, "G'day, Ada!")
    }

    func testGreetingsWithEmptyStringSaysGdayMate() {
        // "A bug is just a test that hasn't been written yet."
        //
        // When you discover a bug in your code, start by adding a test that reproduces it.
        // Fixing the bug then becomes a matter of making the test pass: Red, Green, Refactor.
        let viewModel = ContentView.ViewModel(userRepository: UserRepositoryDouble(user: User(name: "")))

        XCTAssertEqual(viewModel.greetings, "G'day, mate!")
    }
}
