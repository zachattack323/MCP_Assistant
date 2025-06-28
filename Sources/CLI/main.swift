import Foundation
import MCPAssistantCore

let servers = ServerStore.load()
for server in servers {
    print("\(server.app): \(server.name) \(server.enabled ? "enabled" : "disabled")")
}
