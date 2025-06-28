// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MCPAssistant",
    platforms: [.macOS(.v14)],
    products: [
        .library(name: "MCPAssistantCore", targets: ["MCPAssistantCore"]),
        .executable(name: "mcp-assistant-cli", targets: ["MCPAssistantCLI"])
    ],
    targets: [
        .target(
            name: "MCPAssistantCore",
            path: "Sources/Core"),
        .executableTarget(
            name: "MCPAssistantCLI",
            dependencies: ["MCPAssistantCore"],
            path: "Sources/CLI")
    ]
)
