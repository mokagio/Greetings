import Foundation

struct User: Codable, Equatable {

    let name: String

    // Instead of accessing `UserDefaults` under the hood directly we will:
    //
    // 1. Use the `UserRepository` abstraction to decouple this object from the `UserDefaults`
    //    implementation details.
    // 2. Use Dependency Injection mixed with Swift's default parameter to allow the tests to use
    //    a Test Double for the dependency while at the same time leaving the production code API
    //    ergonomic and relying on `UserDefaults.standard`.
    //
    // We'll make all these changes using the tests as a guide, of course.

    func save(in repository: UserRepository = UserDefaults.standard) throws {
        try repository.save(self)
    }

    static func get(from repository: UserRepository = UserDefaults.standard) -> User? {
        repository.get()
    }
}
