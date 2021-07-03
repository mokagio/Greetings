@testable import Greetings
import XCTest

// We don't need to make any change to `User`, as we know from the manual tests that it works, but
// because it's a key model of our application, we decided it's worth investing extra time upfront
// to make sure we have tests around it.
class UserTests: XCTestCase {

    func testSaveUserStoresSelf() throws {
        let user = User(name: "a name")
        let userRepositoryDouble = UserRepositoryDouble()

        try user.save(in: userRepositoryDouble)

        XCTAssertEqual(userRepositoryDouble.storedUser, user)
    }

    // This test may or may not pass already, depending on the state of your `UserDefaults`.
    func testGetUserWhenThereIsNoUserReturnsNone() {
        XCTAssertNil(User.get(from: UserRepositoryDouble()))
    }

    func testGetUserWhenThereIsUserReturnsIt() { }
}

class UserRepositoryDouble: UserRepository {

    private(set) var storedUser: User?

    func get() -> User? { storedUser }

    func save(_ user: User) throws { storedUser = user }

    func delete() { storedUser = .none }
}
