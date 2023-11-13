//
//  ViewController.swift
//  PDFKitView
//
//  Created by Matt on 13/11/2023.
//

import UIKit
import PDFKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let pdfView = PDFView(frame: self.view.bounds)
        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(pdfView)
        
        pdfView.autoScales = true
        
        let fileURL = Bundle.main.url(forResource: "ios_lista_1", withExtension: "pdf")
        pdfView.document = PDFDocument(url: fileURL!)
    }
    
}
