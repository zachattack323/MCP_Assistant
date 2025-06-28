//
//  ContentView.swift
//  MCP Assistant
//
//  Created by Zac Hixon on 4/1/25.
//

import SwiftUI

struct ContentView: View {
    @State private var servers: [MCPServer] = []

    private var groupedIndices: [String: [Int]] {
        Dictionary(grouping: servers.indices, by: { servers[$0].app })
    }

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(groupedIndices.keys.sorted(), id: \._self) { app in
                    Section(app) {
                        ForEach(groupedIndices[app]!, id: \._self) { index in
                            Toggle(servers[index].name, isOn: $servers[index].enabled)
                        }
                    }
                }
            }
            .navigationSplitViewColumnWidth(min: 180, ideal: 200)
            .toolbar {
                ToolbarItem {
                    Button(action: addServer) {
                        Label("Add Server", systemImage: "plus")
                    }
                }
            }
            .onChange(of: servers) { _ in
                saveServers()
            }
            .onAppear(perform: loadServers)
        } detail: {
            if servers.isEmpty {
                Text("No servers configured.")
                    .padding()
            } else {
                Text("Toggle servers to enable or disable them for Claude.")
                    .padding()
            }
        }
    }

    private func loadServers() {
        servers = ServerStore.load()
    }

    private func saveServers() {
        ServerStore.save(servers)
    }

    private func addServer() {
        servers.append(MCPServer(app: "General", name: "New Server", enabled: false))
        saveServers()
    }
}

#Preview {
    ContentView()
}
