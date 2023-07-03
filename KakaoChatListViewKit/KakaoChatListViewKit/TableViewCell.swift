//
//  TableViewCell.swift
//  KakaoChatListViewKit
//
//  Created by 변상필 on 2023/07/02.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var CellImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentsLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    /*
     layoutSubview() - UIView 클래스의 메서드로, 해당 뷰의 하위 뷰들의 레이아웃을 조정하기 위해 호출되는 메서드
     */
    override func layoutSubviews() {
        super.layoutSubviews()
        CellImage.layer.cornerRadius = 30 // 원하는 radius 값으로 설정해주세요
        CellImage.clipsToBounds = true
        
        CellImage?.frame = CGRect(origin: CGPoint(x: 20, y: 10), size: CGSize(width: 70, height: 70))
        // 좌측 상단을 (0,0) 기준으로해서 위치 결정.
        CellImage.layer.borderWidth = 1.0
        CellImage.layer.borderColor = UIColor.black.cgColor
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
