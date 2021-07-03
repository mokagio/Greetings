import Foundation

// We won't be writing any tests for this extension because of the already mentioned issues with
// unit testing `UserDefaults`. Notice, though, that all of the code in here relies of methods
// outside of our control and that the implementation itself is minimal: there's little that can go
// wrong.
extension UserDefaults: UserRepository {

    func get() -> User? {
        data(forKey: key).flatMap { try? JSONDecoder().decode(User.self, from: $0) }
    }

    func save(_ user: User) throws {
        set(try JSONEncoder().encode(user), forKey: key)
    }
}

private let key = "examples.giolodi.greetings.user"
