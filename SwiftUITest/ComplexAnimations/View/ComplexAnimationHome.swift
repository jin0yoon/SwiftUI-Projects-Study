//
//  ComplexAnimationHome.swift
//  SwiftUITest
//
//  Created by 윤진영 on 2020/11/23.
//

import SwiftUI

struct ComplexAnimationHome: View {
    
    @State var selected = tabs[0]
    @Namespace var animation
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                Button(action: {
                    
                }){
                    Image(systemName: "line.horizontal.3.decrease")
                        .font(.system(size: 25, weight: .heavy))
                        .foregroundColor(.black)
                }
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                }){
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 45, height: 45)
                        .cornerRadius(15)
                }
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            
            ScrollView{
                VStack{
                    HStack{
                        VStack(alignment: .leading, spacing: 5){
                            
                            Text("Let's")
                                .font(.title)
                                .foregroundColor(.black)
                            
                            Text("Get Started")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                        }
                        .padding(.horizontal)
                        
                        Spacer(minLength: 0)
                    }
                    
                    HStack(spacing: 0){
                        ForEach(tabs, id: \.self){ tab in
                            
                            //Tab Button
                            TabButton(title: tab, selected: $selected, animation: animation)
                            
                            //even spacing
                            
                            if tabs.last != tab{Spacer(minLength: 0)}
                        }
                    }
                    .padding()
                    .padding(.top, 5)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 20), count: 2),spacing: 25){
                        
                        ForEach(items){item in
                            
                            // Card View...
                            
                            CardView(item: item, animation: animation)
                                .onTapGesture {
                                    
                                    withAnimation(.spring()){
                                        
                                        selectedItem = item
                                        show.toggle()
                                    }
                                }
                        }
                    }
                    .padding()
                }
            }
            
            
            Spacer(minLength: 0)
        }
        .background(Color.white.ignoresSafeArea())
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ComplexAnimationHome()
    }
}

//Tabs
var tabs = ["Glasses", "Watched", "Shoes", "Perfume"]
