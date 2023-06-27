//
//  ContentView.swift
//  kakaoChatListView
//
//  Created by 변상필 on 2023/06/21.
//

import SwiftUI


struct ContentView: View {

//     @EnvironmentObject var chatModel: ModelData = ModelData
    var body: some View {
            NavigationView{
                TabView{
                    Text("1 View")
                        .tabItem {
                            Image(systemName: "person")
                        }
                    
                    List(chatViewModels.sorted(by: dateSort)) {chatViewModel in
                        Button {
                            print("\(chatViewModel.isReading)")
                            chatViewModel.isReading = false
                            print("\(chatViewModel.isReading)")
                        } label: {
                            HStack{
                                chatViewModel.image
                                    .resizable()
                                    .frame(width:50,height: 50)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black,lineWidth: 1))
                                    .padding()

                                VStack(alignment: .leading) {
                                    Section(header: Text(chatViewModel.title)
                                        .padding(.bottom, -10).fontWeight(.bold)){
                                            Text(chatViewModel.content) // 최대 2줄짜리 미리보기 내용
                                                .font(.footnote)
                                                .lineLimit(2)
                                                .frame(width:200, height: 40, alignment: .leading)
//                                            감사합니다...
                                                .foregroundColor(.gray)
                                                
                                        }
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

                    .tabItem {
                        Image(systemName: "message")
                    }
                    Text("3 View")
                        .tabItem {
                            Image(systemName: "bag")
                        }
                    Text("4 View")
                        .tabItem {
                            Image(systemName: "ellipsis")
                        }
                }
                .navigationTitle(Text("채팅"))
            }
        }
    func dateSort(first: ChatViewModel, last: ChatViewModel) -> Bool {
//        let firstDate = first.date
//        let lastDate = last.date
        // 감사합니다 픂ㅍ퓨ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅛ선생님들
        // 해결해씁니다..... !!
        return first.date > last.date
    }
    }

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
