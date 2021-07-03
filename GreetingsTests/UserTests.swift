@testable import Greetings
import XCTest

// We don't need to make any change to `User`, as we know from the manual tests that it works, but
// because it's a key model of our application, we decided it's worth investing extra time upfront
// to make sure we have tests around it.
class UserTests: XCTestCase {

    func testSaveUserStoresSelf() { }

    func testGetUserWhenThereIsNoUserReturnsNone() { }

    func testGetUserWhenThereIsUserReturnsIt() { }
}
