import Foundation

public struct User: Hashable {
    public var name: String
    public var twitterScreenName: String?
    public var avatarURL: URL?
}

/// いつものお前ら
public struct UsualMembers {
    /// giginet
    ///
    /// こんにちは
    /// ![](giginet.png)
    public static let giginet = User(name: "giginet",
                                     twitterScreenName: "@giginet",
                                     avatarURL: URL(string: "https://github.com/giginet.png"))
    /// freddi
    public static let freddi = User(name: "freddi",
                                    twitterScreenName: "@___freddi___",
                                    avatarURL: URL(string: "https://github.com/freddi-kit.png"))
    
    /// tarunon
    public static let tarunon = User(name: "tarunon",
                                     twitterScreenName: "@tarunon",
                                     avatarURL: URL(string: "https://github.com/tarunon.png"))
}
