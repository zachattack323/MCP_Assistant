import Foundation

public struct ServerStore {
    public static let configURL = FileManager.default
        .homeDirectoryForCurrentUser
        .appendingPathComponent(".config/mcp_assistant/servers.json")

    public static func load() -> [MCPServer] {
        if let data = try? Data(contentsOf: configURL),
           let decoded = try? JSONDecoder().decode([MCPServer].self, from: data) {
            return decoded
        } else {
            return [MCPServer].sample
        }
    }

    public static func save(_ servers: [MCPServer]) {
        if let data = try? JSONEncoder().encode(servers) {
            try? FileManager.default.createDirectory(at: configURL.deletingLastPathComponent(), withIntermediateDirectories: true)
            try? data.write(to: configURL)
        }
    }
}
