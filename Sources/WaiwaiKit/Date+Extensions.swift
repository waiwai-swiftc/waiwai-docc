import Foundation

private let formatter: DateFormatter = {
    var formatter = DateFormatter()
    formatter.dateFormat = "YYYY/MM/dd HH:mm:ss"
    return formatter
}()

extension Date {
    /// Make date from YYYY/MM/dd HH:mm:ss
    ///
    /// ```swift
    /// let startedAt = Date(from: "2021/11/16 19:30:00")
    /// ```
    ///
    /// - Parameters:
    ///   - dateString: Formatted date like YYYY/MM/dd HH:mm:ss.
    /// - Retruns: Returns Date if passed string is valid
    public init?(from dateString: String) {
        guard let generated = formatter.date(from: dateString) else {
            return nil
        }
        self = generated
    }
}
