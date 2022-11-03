//
//  DetalhePersonagemViewController.swift
//  hayypotter
//
//  Created by COTEMIG on 27/10/22.
//

import UIKit
import Kingfisher
import Alamofire

class DetalhePersonagemViewController: UIViewController {
    
    
    
    var ator: String = ""
    var nomeImagem: String = ""
    var personagem: String = ""

    
    
    
    
    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var nomeAtor: UILabel!
    @IBOutlet weak var nomePersonagem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.nomeAtor.text = self.ator
        self.nomePersonagem.text = self.personagem
        self.imagem.image = UIImage(named: self.nomeImagem)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
