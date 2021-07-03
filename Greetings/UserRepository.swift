// Testing `UserDefaults` is complicated because it affects the "global state". It reads and writes
// data on disk. If you run a tests that writes on an empty `UserDefaults` the next time you'll run
// the app or the tests, the `UserDefaults` won't be empty anymore.
//
// We can apply the Dependency Inversion Principle and define an abstraction to put in front of
// `UserDefaults` so that `User` and its tests don't depend on `UserDefaults` any more.
protocol UserRepository {

    func get() -> User?

    func save(_ user: User) throws
}
