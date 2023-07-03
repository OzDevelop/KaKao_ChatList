//
//  ViewController.swift
//  KakaoChatListViewKit
//
//  Created by 변상필 on 2023/06/30.
//


// 1. 일단 배운 방법으로 먼저 해보기
// 테이블 뷰 컨트롤러 통채로 만들어서 해보기
// 2. 뷰 셀만 따로해서 만드는거 해보기
// 3. 코드베이스로 작성해보기

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatViewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        // 날짜를 기준으로 정렬
        let sortedChatViewModels = chatViewModels.sorted { $0.date > $1.date }
        
        let row = sortedChatViewModels[indexPath.row]
    
        cell.titleLabel.text = row.title
        
        cell.contentsLabel.text = row.content
        // 콘텐츠가 출력이 안되여...
        cell.dateLabel.text = row.date
        cell.CellImage.image = UIImage(named:row.imageName) 
        print(row.content)
        return cell
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 90
    }
}

