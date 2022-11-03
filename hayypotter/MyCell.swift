//
//  MyCell.swift
//  hayypotter
//
//  Created by COTEMIG on 27/10/22.
//

import UIKit
import Kingfisher
import Alamofire

class MyCell: UITableViewCell {
    @IBOutlet weak var Imagem: UIImageView!
    @IBOutlet weak var nomeAtor: UILabel!
    @IBOutlet weak var nomePersonagem: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
