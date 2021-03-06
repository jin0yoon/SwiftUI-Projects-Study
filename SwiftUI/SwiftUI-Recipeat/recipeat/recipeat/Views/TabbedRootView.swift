//
//  ContentView.swift
//  recipeat
//
//  Created by 윤진영 on 2020/10/11.
//

import SwiftUI

struct TabbedRootView: View {
    
    @State private var selection = 0
    
    @EnvironmentObject var env: GlobalEnvironment
    
    @State var isHidden: Bool = false
    
    var body: some View {
        ZStack{
            NavigationView {
                Text("")
            }.navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(isHidden)
            .onAppear { self.isHidden = true }
            .edgesIgnoringSafeArea([.top, .bottom])
            .navigationBarBackButtonHidden(true)
            
            TabView(selection: $selection){
                HomeView()
                    .tabItem {
                        
                            Image(systemName: "house")
                            Text("Home")
                        
                    }.tag(0)
                
                SearchView()
                    .tabItem {
                        
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                        
                    }.tag(1)
                
                NewPostView()
                    .tabItem {
                        
                            Image(systemName: "plus.square")
                            Text("Add Recipe")
                        
                    }.tag(2)
                
                MeView()
                    .tabItem {
                        
                            Image(systemName: "person.circle")
                            Text("Me")
                        
                    }.tag(3)
            }
        }
        
    }
}


struct TabbedRootView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedRootView()
    }
}
