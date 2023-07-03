//
//  ChatViewModel.swift
//  kakaoChatListView
//
//  Created by 변상필 on 2023/06/23.
//

import SwiftUI

struct ChatViewModel: Identifiable {
    var id: UUID = UUID()
    var title: String
    var content:String
    var date: String
    
    var imageName: String
    
    @State var isReading: Bool

    
    var image: Image {
        Image(imageName)
    }
}

var chatViewModels: [ChatViewModel] = [
    ChatViewModel(title: "카카오톡 선물하기 ", content: "교환권을 잘 사용하셨나요 ㅇㅅㅇ?", date: "6월17일", imageName: "101", isReading: true),
    ChatViewModel(title: "카카오톡", content: "[기기 로그인 알림]", date: "6월13일", imageName: "100", isReading:  false),
    ChatViewModel(title: "무신사 스토어", content: "[주문 상품 발송 안내] 변*필님의 상품이 출고되었습니다.", date: "7월10일", imageName: "102", isReading:  false),
    ChatViewModel(title: "버거킹", content: "(광고)헬로 친구들🔥 혜택의 세계로 오라", date: "6월12일", imageName: "103", isReading:  true),
    ChatViewModel(title: "원티드 WANTED", content: "원티드 추천 포지션 안내 변상필님을 위한 개별 맞춤 포지션 안내드립니다.", date: "6월15일", imageName: "106", isReading:  false),
    ChatViewModel(title: "KREAM", content: "[KREAM] 상품을 잘 받으셨나요? 구매하신 상품을 자랑해보세요!", date: "6월20일", imageName: "105", isReading:  false),
    ChatViewModel(title: "유니클로", content: "(광고)썸머 스타일위크! 에어리즘 특별가격", date: "6월07일", imageName: "104", isReading:  true)
]
