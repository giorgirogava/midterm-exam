//
//  ConcentrationThemeChooserViewController.swift
//  Concentration
//
//  Created by IMAC on 30.10.21.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {
    
    
    let themes = [
        
        "Sports": "โฝ๏ธ๐๐โพ๏ธ๐ฅ๐๐๐๐๐๐ณ๐ฑ",
        "Animals": "๐ฆฎ๐ฆ๐๐๐๐๐ฆ๐ฆ๐ฆ๐๐ฆ๐ซ",
        "Faces": "๐คช๐๐๐ฉ๐๐๐คฃ๐๐ง๐๐ฅธ๐คจ",
        
        
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
