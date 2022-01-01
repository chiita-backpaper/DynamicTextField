//
//  ContentView.swift
//  DynamicTextField
//
//  Created by Taichi Uragami on 2022/01/01.
//

import SwiftUI

struct ContentView: View {
    @State var wordNames: [String] = [""]
    @State var translations: [String] = [""]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<wordNames.count, id: \.self) { index in
                    HStack {
                        Text("単語名:")
                        TextField("入力", text: self.$wordNames[index]).foregroundColor(.blue)
                        Text("意味:")
                        TextField("入力", text: self.$translations[index]).foregroundColor(.blue)
                        if index == wordNames.count - 1 {
                            Button(action:{
                                self.wordNames.append("")
                                self.translations.append("")
                            }) {
                                Text("Add more")
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
