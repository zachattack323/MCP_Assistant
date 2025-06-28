import Foundation

public struct MCPServer: Identifiable, Codable {
    public var id: UUID = UUID()
    public var app: String
    public var name: String
    public var enabled: Bool

    public init(id: UUID = UUID(), app: String, name: String, enabled: Bool) {
        self.id = id
        self.app = app
        self.name = name
        self.enabled = enabled
    }
}

public extension Array where Element == MCPServer {
    static var sample: [MCPServer] {
        [
            MCPServer(app: "Claude", name: "Default", enabled: true),
            MCPServer(app: "ChatGPT", name: "Research", enabled: false),
            MCPServer(app: "Bing", name: "Creative", enabled: true)
        ]
    }
}
