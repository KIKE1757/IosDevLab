//
//  SecondViewController.swift
//  ProyectoFinal
//
//  Created by MacBook on 20/09/18.
//  Copyright © 2018 MacBook. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var maquinaLabel: UILabel!
    @IBOutlet weak var personaLabel: UILabel!
    @IBOutlet weak var maquinaBtn: UIButton!
    
    var counterMaquina = 0
    var counterPersona =  0
    let imagenes = [" ","👊🏻","🖐🏻","✌🏻","🦎","🖖🏻"]
    
    var nombre = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        maquinaLabel.text = "Score Maquina: \(counterMaquina)"
        personaLabel.text = "Score \(nombre): \(counterPersona)"

        // Do any additional setup after loading the view.
    }

    @IBAction func jugar(_ sender: UIButton) {
        let movJugador = sender.tag
        let movMaquina = Int(arc4random_uniform(5)+1)
        var tituloAlerta = String()
        
        if movJugador == movMaquina{
            maquinaBtn.setTitle(sender.titleLabel?.text, for: .normal)
            tituloAlerta = "Empate"
            
        }else{
            switch movJugador{
                case 1://👊🏻
                    if movMaquina == 2 || movMaquina == 5 {
                        maquinaBtn.setTitle("\([imagenes[movMaquina])", for: .normal)
                        tituloAlerta = "Perdiste"
                        counterMaquina += 1
                    }else{
                        maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                        tituloAlerta = "Ganaste"
                        counterPersona += 1

                    }
            case 2:
                if movMaquina == 3 || movMaquina == 4{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloAlerta = "Perdiste"
                    counterMaquina += 1
                }else{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloAlerta = "Ganaste"
                    counterPersona += 1
                    
                }
                break
            case 3:
                if movMaquina == 1 || movMaquina == 5{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloAlerta = "Perdiste"
                    counterMaquina += 1
                }else{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloAlerta = "Ganaste"
                    counterPersona += 1
                }
                break
            case 4:
                if movMaquina == 1 || movMaquina == 3{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloAlerta = "Perdiste"
                    counterMaquina += 1
                }else{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloAlerta = "Ganaste"
                    counterPersona += 1
                }
                break
            case 5:
                if movMaquina == 2 || movMaquina == 4{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloAlerta = "Perdiste"
                    counterMaquina += 1
                }else{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloAlerta = "Ganaste"
                    counterPersona += 1
                }
                break
            default :
                
                break
            }
        }
        
        let alertController = UIAlertController(title: tituloAlerta, message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true,completion: nil)
        maquinaLabel.text = "Score Maquina: \(counterMaquina)"
        personaLabel.text = "Score \(nombre): \(counterPersona)"
        
        
        
    }
    
    @IBAction func Exit(_ sender: UIButton) {
    self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
}
