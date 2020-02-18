//
//  DetailView.swift
//  H4X0R News
//
//  Created by Appala Naidu on 18/02/20.
//  Copyright © 2020 Appala Naidu. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url : String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "www.google.com")
    }
}


