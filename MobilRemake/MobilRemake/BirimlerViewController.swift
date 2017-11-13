//
//  BirimlerViewController.swift
//  MobilRemake
//
//  Created by Admin on 10/12/16.
//  Copyright © 2016 miragessee. All rights reserved.
//

import UIKit

class BirimlerViewController: BaseViewController {
    
    @IBOutlet weak var akademikBirimlerIcon: UILabel!
    @IBOutlet weak var fotokopiKirtasiyeIcon: UILabel!
    @IBOutlet weak var etkinlikAlanlariIcon: UILabel!
    @IBOutlet weak var idariBirimlerIcon: UILabel!
    @IBOutlet weak var kafeRestorantIcon: UILabel!
    @IBOutlet weak var digerIcon: UILabel!
    @IBOutlet weak var aramaTextField: UITextField!
    @IBOutlet weak var lokasyonFoto: UIImageView!
    @IBOutlet weak var akademikView: UIView!
    @IBOutlet weak var fotokopiView: UIView!
    @IBOutlet weak var etkinlikView: UIView!
    @IBOutlet weak var idariView: UIView!
    @IBOutlet weak var kafeView: UIView!
    @IBOutlet weak var digerView: UIView!
    @IBOutlet weak var boylamCizgiView: UIView!
    @IBOutlet weak var enlem2CizgiView: UIView!
    @IBOutlet weak var enlem1CizgiView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: ""), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage(named: "")
        self.navigationController?.navigationBar.layer.borderWidth = 0
        
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        
        self.navigationController?.navigationBar.layer.borderColor =
            UIColor.orange.cgColor
        self.navigationController?.navigationBar.layer.borderWidth = 0
        
        akademikBirimlerIcon.font = UIFont.swiftFontello(ofSize: 35)
        akademikBirimlerIcon.text = String.fontFontelloIcon(name: SwiftFontello.FTLIndustrialBuilding)
        
        fotokopiKirtasiyeIcon.font = UIFont.swiftFontello(ofSize: 35)
        fotokopiKirtasiyeIcon.text = String.fontFontelloIcon(name: SwiftFontello.FTLPrint1)
        
        etkinlikAlanlariIcon.font = UIFont.swiftFontello(ofSize: 35)
        etkinlikAlanlariIcon.text = String.fontFontelloIcon(name: SwiftFontello.FTLDribbble)
        
        idariBirimlerIcon.font = UIFont.swiftFontello(ofSize: 35)
        idariBirimlerIcon.text = String.fontFontelloIcon(name: SwiftFontello.FTLCommericalBuilding)
        
        kafeRestorantIcon.font = UIFont.swiftFontello(ofSize: 35)
        kafeRestorantIcon.text = String.fontFontelloIcon(name: SwiftFontello.FTLCafe)
        
        digerIcon.font = UIFont.swiftFontello(ofSize: 35)
        digerIcon.text = String.fontFontelloIcon(name: SwiftFontello.FTLGlobe)
        
        aramaTextField.leftViewMode = UITextFieldViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        let image = UIImage.fontFontelloIcon(name: SwiftFontello.FTLSearch3, textColor: UIColor.lightGray, size: CGSize(width: 20, height: 20))
        imageView.image = image
        aramaTextField.leftView = imageView
        
        self.tabBarController?.tabBar.isHidden = false
    }
    
    @IBAction func aramaTextViewTapAction(_ sender: Any) {
        print("bastim asdasd")
        UIView.animate(withDuration: 1, animations:
            {
                self.lokasyonFoto.center.y -= self.view.bounds.height
                self.akademikView.center.y += self.view.bounds.height
                self.fotokopiView.center.y += self.view.bounds.height
                self.etkinlikView.center.y += self.view.bounds.height
                self.idariView.center.y += self.view.bounds.height
                self.kafeView.center.y += self.view.bounds.height
                self.digerView.center.y += self.view.bounds.height
                self.boylamCizgiView.center.y += self.view.bounds.height
                self.enlem1CizgiView.center.y += self.view.bounds.height
                self.enlem2CizgiView.center.y += self.view.bounds.height
                self.aramaTextField.alpha = 0
        }) { (success:Bool) in
            print("bitti asdasd")
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "BirimMapNavController")
            self.present(nextViewController, animated:true, completion:nil)
        }
    }
    
    @IBAction func akademikViewTapAction(_ sender: Any) {
        print("bastim asdasd")
        UIView.animate(withDuration: 1, animations:
            {
                self.lokasyonFoto.center.y -= self.view.bounds.height
                self.akademikView.center.y += self.view.bounds.height
                self.fotokopiView.center.y += self.view.bounds.height
                self.etkinlikView.center.y += self.view.bounds.height
                self.idariView.center.y += self.view.bounds.height
                self.kafeView.center.y += self.view.bounds.height
                self.digerView.center.y += self.view.bounds.height
                self.boylamCizgiView.center.y += self.view.bounds.height
                self.enlem1CizgiView.center.y += self.view.bounds.height
                self.enlem2CizgiView.center.y += self.view.bounds.height
                self.aramaTextField.alpha = 0
        }) { (success:Bool) in
            print("bitti asdasd")
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "BirimMapNavController")
            self.present(nextViewController, animated:true, completion:nil)
        }
    }
    
    override func viewDidLayoutSubviews() {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
