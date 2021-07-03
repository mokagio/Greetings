func greetings(userName: String?) -> String {
    return "G'day, \(userName.map { $0 } ?? "mate")!"
}
