//
//  ViewController.swift
//  hayypotter
//
//  Created by COTEMIG on 27/10/22.
//

import UIKit
import Kingfisher
import Alamofire


struct Personagem: Decodable {
    let image: String
    let actor: String
    let name: String
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var listaDePersonagens:[Personagem] = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listaDePersonagens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "MinhaCelula", for: indexPath) as! MyCell
        let personagem = self.listaDePersonagens[indexPath.row]
        
        cell.Imagem.kf.setImage(with: URL(string: personagem.image))
        cell.nomeAtor.text = personagem.actor
        cell.nomePersonagem.text = personagem.name
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        self.performSegue(withIdentifier: "abrirDetalhe" , sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let detalhesViewController = segue.destination as! DetalhePersonagemViewController
        let indice = sender as! Int
        let personagem = self.listaDePersonagens[indice]
        
        detalhesViewController.ator = personagem.actor
        detalhesViewController.personagem = personagem.name
        detalhesViewController.nomeImagem = personagem.image
        
    }
    
    
    @IBOutlet weak var tableview: UITableView!
    func listapersonagens() {
        AF.request("https://hp-api.onrender.com/api/characters").responseDecodable(of: [Personagem].self) { response in
            if let Personagem = response.value {
                self.listaDePersonagens = Personagem
            }
            self.tableview.reloadData()
        }}
    override func viewDidLoad() {
        

     

        
        super.viewDidLoad()
        self.tableview.delegate = self
        
        tableview.dataSource = self
        listapersonagens()

    }


}

