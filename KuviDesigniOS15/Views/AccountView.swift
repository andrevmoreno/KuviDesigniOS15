//
//  AccountView.swift
//  KuviDesigniOS15
//
//  Created by Andrea Moreno on 25-07-24.
//

import SwiftUI

struct AccountView: View {
    @State var isDeleted = false
    @State var isPinned = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background 11")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .offset(x:5, y: 0)
                
                VStack (alignment: .leading, spacing: 12){


                        profile
                            .listRowBackground(Color.clear)
                        Spacer()
                        links
                            .listRowBackground(Color.clear)
                        Spacer()
                        websiteLink
                            .listRowBackground(Color.clear)
                       
                    
                }.accentColor(.primary)
                        .listStyle(.insetGrouped)
                        .navigationTitle("Account")

            }
        }
    }
    
    var profile: some View {
        VStack (spacing: 8) {
            Image(systemName: "person.circle.fill")
                .font(.system(size: 28.0))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .blue.opacity(0.3))
                .padding(10)
                .background(Circle().fill(.ultraThinMaterial))
                .strokeStyle()

            Text("Andrevmoreno")
                .font(.title2.weight(.semibold))
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)],startPoint: .topLeading, endPoint: .bottomTrailing)).lineLimit(1)

            
            HStack {
                Image(systemName: "location")
                Text("Santiago, Chile").font(.callout)
            }
        .foregroundColor(.secondary)
            
        }.padding(20)
            .frame(width: 350, height: 170)
            .background(.ultraThinMaterial)
        .cornerRadius(30.0)
        .shadow(color: Color("Shadow").opacity(0.15), radius: 10, x:0, y: 10)
        .strokeStyle()
        
    }

    
    var links: some View {
        VStack(alignment: .leading, spacing: 12) {
            Section {
                NavigationLink(destination: HomeView()) {
                    Label("Settings", systemImage: "gear")
                }
                Label("Billing", systemImage: "creditcard")
                Label("Help", systemImage: "questionmark")
                .imageScale(.small)
            }
        .listRowSeparatorTint(.blue)
        .listRowSeparator(.hidden)
            
        }
        .padding(20)
        .background(.ultraThinMaterial)
        .cornerRadius(30.0)
        .shadow(color: Color("Shadow").opacity(0.15), radius: 10, x:0, y: 10)
        .strokeStyle()
        
        
    }
    
    var websiteLink: some View {
        Section {
            if !isDeleted {
                Link(destination: URL(string: "https://www.apple.com/")!) {
                    Label("Website", systemImage: "globe")
                }
                .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                    Button(action: { isDeleted = true }) {
                        Label("Delete", systemImage: "trash")
                    }
                    .tint(.red)
                    
                    Button { isPinned.toggle() } label: {
                        if isPinned {
                            Label("Unpin", systemImage: "pin.slash")
                        } else {
                            Label("Pin", systemImage: "pin")
                        }
                    }
                    .tint(isPinned ? .gray : .yellow)
                }
            }
        }
    }
}



#Preview {
    AccountView()
}
