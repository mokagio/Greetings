import Foundation

struct User: Codable {

    let name: String

    private static let key = "user"

    func save() throws {
        UserDefaults.standard.set(try JSONEncoder().encode(self), forKey: User.key)
    }

    static func get() -> User? {
        return UserDefaults.standard.data(forKey: User.key)
            .flatMap { try? JSONDecoder().decode(User.self, from: $0) }
    }
}
