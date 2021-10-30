//
//  ConcentrationThemeChooserViewController.swift
//  Concentration
//
//  Created by IMAC on 30.10.21.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {
    
    
    let themes = [
        
        "Sports": "⚽️🏀🏈⚾️🥎🏐🏉🏓🏏🏒🎳🎱",
        "Animals": "🦮🦊🐐🐆🐅🐘🦓🦌🦍🕊🦇🐫",
        "Faces": "🤪😄🙃💩😇😋🤣😅🧐😎🥸🤨",
        
        
    ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Choose Theme" {
            
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName]{
                if let cvc = segue.destination  as? ConcentrationViewController {
                    
                    cvc.theme = theme
                }
                
            }
        }        
    }
}
