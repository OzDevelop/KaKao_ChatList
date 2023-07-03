//
//  test2.swift
//  kakaoChatListView
//
//  Created by 변상필 on 2023/06/26.
//

import SwiftUI

struct test2: View {
    var body: some View {
        List(){
            HStack {
                Image("100")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(.black,lineWidth: 1))
                    .frame(width: 70)
                VStack{
                    Text("제목입니다")
                    Text("내용입니다")
                }
                Spacer()
                VStack{
                    Spacer()
                    Text("날짜입니다.")
                    Spacer()
                }
            }
        }
    }
}

struct test2_Previews: PreviewProvider {
    static var previews: some View {
        test2()
    }
}
