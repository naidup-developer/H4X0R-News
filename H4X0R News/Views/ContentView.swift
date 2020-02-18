//
//  ContentView.swift
//  H4X0R News
//
//  Created by Appala Naidu on 18/02/20.
//  Copyright © 2020 Appala Naidu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkmanager = NetworkManager()
    
    var body: some View {
        
        NavigationView{
            List(networkmanager.posts) { post in
                NavigationLink(destination: DetailView(url : post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
        .navigationBarTitle("H4X0R News")
        }
        .onAppear {
            self.networkmanager.fetchData()
        }
    }   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
