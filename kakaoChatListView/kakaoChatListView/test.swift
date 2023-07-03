//
//  ContentView.swift
//  kakaoChatListView
//
//  Created by 변상필 on 2023/06/21.
//

import SwiftUI


struct test: View {
    
    //     @EnvironmentObject var chatModel: ModelData = ModelData
    
    var body: some View {
        List(){
            HStack{
            chatViewModels[1].image
                .resizable()
                .frame(width:50,height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black,lineWidth: 1))
                .padding()
                
                VStack(alignment: .leading) {
                    Section(header: Text(chatViewModels[1].title)
                        .padding(.bottom, -10).fontWeight(.bold)){
                            Text(chatViewModels[1].content) // 최대 2줄짜리 미리보기 내용
                                .font(.footnote)
                                .lineLimit(2)
                                .frame(height: 40)
                                .foregroundColor(.gray)
                        }
                }
                .padding(.horizontal, -90)
                .frame(width: 200)
                VStack{
                    Text(chatViewModels[1].date)    //날짜가 나올 부분
                        .frame(width: 100)
                        .font(.caption)
                        .foregroundColor(.gray)
                    Image(systemName: chatViewModels[1].isReading ? "circle.fill" : "")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.red)
                        .frame(width: 30, height: 13)
                        .padding(.leading)
                }
            }
            HStack{
                chatViewModels[0].image
                    .resizable()
                    .frame(width:50,height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black,lineWidth: 1))
                    .padding()
                Spacer()
                VStack(alignment: .leading) {
                    Section(header: Text(chatViewModels[0].title)
                        .padding(.bottom, -10).fontWeight(.bold)){
                            Text(chatViewModels[0].content) // 최대 2줄짜리 미리보기 내용
                                .font(.footnote)
                                .lineLimit(2)
                                .frame(height: 40)
                                .foregroundColor(.gray)
                        }
                }
                .frame(width: 200)
                VStack{
                    Text(chatViewModels[1].date)    //날짜가 나올 부분
                        .frame(width: 100)
                        .font(.caption)
                        .foregroundColor(.gray)
                    Image(systemName: chatViewModels[1].isReading ? "circle.fill" : "")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.red)
                        .frame(width: 30, height: 13)
                        .padding(.leading)
                }
                
            }
        }
    }
    
}
//struct ChatDetail1: View {
//
//    var body: some View {
//        Text("LLLL")
//    }
//}


struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
