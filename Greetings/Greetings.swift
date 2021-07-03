func greetings(userName: String?) -> String {
    return "G'day, \(greetingsReceiver(fromUserName: userName))!"
}

private func greetingsReceiver(fromUserName userName: String?) -> String {
    guard let userName = userName, userName.isEmpty == false else { return "mate" }
    return userName
}
