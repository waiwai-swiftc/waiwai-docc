import Foundation

public struct Topic: Hashable {
    public var title: String
    public var summary: String
    public var term: Range<Date>
    public var presenter: User
    public var slideURL: URL?
}
