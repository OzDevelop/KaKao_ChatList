//
//  ContentView.swift
//  kakaoChatListView
//
//  Created by 변상필 on 2023/06/21.
//

import SwiftUI


struct test1: View {

//     @EnvironmentObject var chatModel: ModelData = ModelData

    var body: some View {

        TabView{

            List(chatViewModels) {chatViewModel in
                Button {
                    print("\(chatViewModel.isReading)")
                    chatViewModel.isReading = false
                    print("\(chatViewModel.isReading)")
                } label: {
                    HStack(){
                        chatViewModel.image
                            .resizable()
                            .frame(width:50,height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black,lineWidth: 1))
                            .padding()
                        
                        VStack(alignment: .leading) {
                            Text(chatViewModel.title)
                            
                            Text(chatViewModel.content) // 최대 2줄짜리 미리보기 내용
                                .font(.footnote)
                                .lineLimit(2)
                                .frame(height: 40)
                                .foregroundColor(.gray)
                            
                        }
                        .frame(width: 200)
                        
                        Spacer()
                        
                        VStack{
                            Text(chatViewModel.date)    //날짜가 나올 부분
                                .frame(width: 100)
                                .font(.caption)
                                .foregroundColor(.gray)
                            Image(systemName: chatViewModel.isReading ? "circle.fill" : "")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.red)
                                .frame(width: 30, height: 13)
                                .padding(.leading)
                        }
                    }
                    .frame(height: 20)
                    .padding()
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.inset)
        }
        }
    }

struct test1_Previews: PreviewProvider {
    static var previews: some View {
        test1()
    }
}
