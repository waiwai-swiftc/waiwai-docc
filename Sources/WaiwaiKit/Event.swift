import Foundation

/// 過去に開催したイベントを表すモデル
/// ```swift
/// let event = Event(
///   ...
/// )
/// ```
public struct Event {
    ///　開催番号
    public var number: Int
    
    /// 開催時間
    public var term: Range<Date>
    
    /// 主催者
    public var organizer: User
    
    /// 扱ったトピック
    public var topics: Set<Topic>
    
    /// 開催場所
    public var venue: String
    
    /// 参加者
    public var attendees: Set<User>
    
    /// 募集ページのURL
    public var eventPageURL: URL
    
    /// オンライン開催かどうか
    ///
    /// - Returns: `venue`がDiscordのとき、`true`
    public var isOnline: Bool {
        venue == "Discord"
    }
}

public struct PreviousEvents {
    /// わいわいswiftc #31
    public static let わいわいswiftc31 = Event(
        number: 31,
        term: Date(from: "2021/11/16 19:30:00")!..<Date(from: "2021/11/16 22:00:00")!,
        organizer: UsualMembers.tarunon,
        topics: [
            Topic(title: "わいわいDocC",
                  summary: "",
                  term: Date(from: "2021/11/16 19:30:00")!..<Date(from: "2021/11/16 21:00:00")!,
                  presenter: UsualMembers.giginet,
                  slideURL: nil),
            Topic(title: "意外と知られてないXcode13の新しい参照カウンタ最適化オプションの挙動",
                  summary: "",
                  term: Date(from: "2021/11/16 21:00:00")!..<Date(from: "2021/11/16 22:00:00")!,
                  presenter: UsualMembers.freddi,
                  slideURL: nil)
        ],
        venue: "Discord",
        attendees: [],
        eventPageURL: URL(string: "https://iosdiscord.connpass.com/event/228881/")!
    )
}
