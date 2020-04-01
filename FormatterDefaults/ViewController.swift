//
//  ViewController.swift
//  FormatterDefaults
//
//  Created by Ahmed Khalaf on 4/1/20.
//  Copyright © 2020 io.github.ahmedkhalaf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        localizableStringTestLabel.text = NSLocalizedString("Hello", comment: "")
        
        numberFormatterDemoLabel.text = NumberFormatter().string(from: 123)
        
        dateFormatterDemoLabel.text = { () -> DateFormatter in
            let formatter = DateFormatter()
            formatter.dateStyle = .full
            return formatter
        }().string(from: Date())
        
        justifyDemoLabel.text = """
        تم علاقة المسرح هذه, عن به، إعادة العصبة. كان أم يذكر اعلان الثانية, مرمى تكبّد الدولارات نفس كل, بل بحق بأيدي العصبة. بلا شدّت الثانية مع. هذه سقوط إبّان من, مع دفّة حادثة بين. تم حدى يرتبط الطرفين, تحت إذ عجّل عرفها الجنوبي.
        """
    }
    
    private lazy var localizableStringTestLabel: UILabel = {
        let label = UILabel(frame: .zero)
        stackView.addArrangedSubview(label)
        return label
    }()
    private lazy var numberFormatterDemoLabel: UILabel = {
        let label = UILabel(frame: .zero)
        stackView.addArrangedSubview(label)
        return label
    }()
    private lazy var dateFormatterDemoLabel: UILabel = {
        let label = UILabel(frame: .zero)
        stackView.addArrangedSubview(label)
        return label
    }()
    private lazy var justifyDemoLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.numberOfLines = 0
        label.textAlignment = .justified
        stackView.addArrangedSubview(label)
        return label
    }()
    private lazy var stackView: UIStackView = {
        let stackview = UIStackView(frame: .zero)
        stackview.axis = .vertical
        stackview.spacing = 16
        stackview.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackview)
        NSLayoutConstraint.activate([
            stackview.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackview.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackview.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32),
        ])
        return stackview
    }()
}

