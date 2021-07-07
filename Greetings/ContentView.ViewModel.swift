extension ContentView {

    struct ViewModel {

        let greetings: String

        init(userRepository: UserRepository) {
            self.greetings = Self.greetings(userName: userRepository.get()?.name)
        }

        private static func greetings(userName: String?) -> String {
            return "G'day, \(greetingsReceiver(fromUserName: userName))!"
        }

        private static func greetingsReceiver(fromUserName userName: String?) -> String {
            guard let userName = userName, userName.isEmpty == false else { return "mate" }
            return userName
        }
    }
}
