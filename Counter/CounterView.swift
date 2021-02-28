//
//  CounterVIew.swift
//  Counter
//
//  Created by Arystan on 2/28/21.
//

import UIKit

class CounterView: UIView {
    
    var counter = 1
    
    lazy var totalPriceLabel: UILabel = {
        let label = UILabel()
        label.text = "\(2350 * counter) KZT"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var plusButton: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var minusButton: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var counterLabel: UILabel = {
        let label = UILabel()
        label.text = "\(counter)"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var counterStackView: UIStackView = {
        let stack = UIStackView()
        stack.layer.borderWidth = 1
        stack.layer.borderColor = UIColor.lightGray.cgColor
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.layer.cornerRadius = 10
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupConstraints()
        addActions()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .white
        
        counterStackView.addArrangedSubview(plusButton)
        counterStackView.addArrangedSubview(counterLabel)
        counterStackView.addArrangedSubview(minusButton)
        
        addSubview(totalPriceLabel)
        addSubview(counterStackView)
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            totalPriceLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            totalPriceLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 15),
            totalPriceLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),

            counterStackView.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            counterStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            counterStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -15)
        ])
    }
    
    private func addActions() {
        plusButton.addTarget(self, action: #selector(increaseItemCount(_:)), for: .touchUpInside)
        minusButton.addTarget(self, action: #selector(decreaseItemCount(_:)), for: .touchUpInside)
    }
    
    @objc func increaseItemCount(_ sender: UIButton!) {
        if counter < 50 {
            counter += 1
        }
        DispatchQueue.main.async(execute: { [self] in
            counterLabel.text = "\(counter)"
            totalPriceLabel.text = "\(2350 * counter) KZT"
        })
        
    }
    
    @objc func decreaseItemCount( _ sender: UIButton!) {
        if counter > 0 {
            counter -= 1
        }
        
        DispatchQueue.main.async(execute: { [self] in
            counterLabel.text = "\(counter)"
            totalPriceLabel.text = "\(2350 * counter) KZT"
        })
    }
}
