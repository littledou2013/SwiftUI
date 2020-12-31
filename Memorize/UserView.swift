//
//  UserView.swift
//  Memorize
//
//  Created by chenxiaoshuang on 2020/12/31.
//

import SwiftUI

struct User {
    var firstName = "Bilbo"
    var lastName = "Baggins"
}
 
struct UserView: View {
    @State private var user = User()  //1
 
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName).")  //2
            TextField("First name", text: $user.firstName) //3
            TextField("Last name", text: $user.lastName)
        }
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
