//
//  Model.swift
//  KakaoChatListViewKit
//
//  Created by 변상필 on 2023/06/30.
//

import Foundation
import UIKit

struct ChatViewModel{

    var title: String
    var content:String
    var date: String
    
    var imageName: String
    
    /*
     연산 프로퍼티로 모양을 바꿔서 반환하려고 했는데 UIImageView 형태로 반환이 되서 UIImage로 바꿔야하는데 모르게씀 그래서가지고 layoutSubviews이라는 메서드를 오버라이딩해서 해씀
     */
//    var image: UIImageView {
////        let myView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100)) //이미지뷰 만들기
////
////        myView.layer.cornerRadius = myView.frame.width / 2 //프레임을 원으로 만들기
////
////        let myImage = UIImage(named: imageName) //이미지 객체 생성
////
////        myView.image = myImage //이미지를 이미지뷰에 넣기
////
////        myView.contentMode = UIView.ContentMode.scaleAspectFill //이미지 비율 바로잡기
////
////        myView.clipsToBounds = true //이미지를 뷰 프레임에 맞게 clip하기
////        return myView
//            let aImageView = UIImageView()
//            aImageView.backgroundColor = .red
//            aImageView.image = UIImage(named: imageName)
//            aImageView.contentMode = .scaleAspectFill
//            aImageView.layer.cornerRadius = 150
//            aImageView.layer.shadowOffset = CGSize(width: 5, height: 5)
//            aImageView.layer.shadowOpacity = 0.7
//            aImageView.layer.shadowRadius = 5
//            aImageView.layer.shadowColor = UIColor.gray.cgColor
//            
//            //넘치는 영역 잘라내기
//            aImageView.clipsToBounds = true
//            
//            aImageView.translatesAutoresizingMaskIntoConstraints = false
//            return aImageView
//
//    }
    
    var isReading: Bool

  // uikit 이미지 넣는법
//    var image: Image {
//        Image(imageName)
//    }
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
