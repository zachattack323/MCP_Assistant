import Foundation

struct MCPServer: Identifiable, Codable {
    var id: UUID = UUID()
    var app: String
    var name: String
    var enabled: Bool
}

enum ServerStore {
    static let configURL = FileManager.default
        .homeDirectoryForCurrentUser
        .appendingPathComponent(".config/mcp_assistant/servers.json")

    static func load() -> [MCPServer] {
        if let data = try? Data(contentsOf: configURL),
           let decoded = try? JSONDecoder().decode([MCPServer].self, from: data) {
            return decoded
        } else {
            return [MCPServer].sample
        }
    }

    static func save(_ servers: [MCPServer]) {
        if let data = try? JSONEncoder().encode(servers) {
            try? FileManager.default.createDirectory(at: configURL.deletingLastPathComponent(), withIntermediateDirectories: true)
            try? data.write(to: configURL)
        }
    }
}

extension MCPServer {
    static var sample: [MCPServer] {
        [
            MCPServer(app: "Claude", name: "Default", enabled: true),
            MCPServer(app: "ChatGPT", name: "Research", enabled: false),
            MCPServer(app: "Bing", name: "Creative", enabled: true)
        ]
    }
}
