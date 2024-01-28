//
//  NewAndHotViewController.swift
//  AssignmentNetflix
//
//  Created by Jaehui Yu on 12/27/23.
//

import UIKit
import SnapKit

class NewAndHotViewController: UIViewController {
    
    let searchBar = UISearchBar()
    let buttonStackView = UIStackView()
    let blueButton = UIButton()
    let turquoiseButton = UIButton()
    let pinkButton = UIButton()
    let mainLabel = UILabel()
    let subLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "NEW & HOT 검색"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        configureHierarchy()
        configureView()
        setUpContstraints()
    }
    
    func configureHierarchy() {
        view.addSubview(searchBar)
        view.addSubview(buttonStackView)
        buttonStackView.addArrangedSubview(blueButton)
        buttonStackView.addArrangedSubview(turquoiseButton)
        buttonStackView.addArrangedSubview(pinkButton)
        view.addSubview(mainLabel)
        view.addSubview(subLabel)
    }
    
    func configureView() {
        searchBar.searchBarStyle = .minimal
        searchBar.searchTextField.textColor = .white
        searchBar.searchTextField.backgroundColor = .secondaryLabel
        searchBar.searchTextField.attributedPlaceholder = NSAttributedString(string: "게임, 시리즈, 영화를 검색하세요...", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        searchBar.searchTextField.leftView?.tintColor = .lightGray
        
        buttonStackView.alignment = .center
        buttonStackView.distribution = .fillProportionally
        buttonStackView.spacing = 10
        
        blueButton.configuration = .capsuleStyle(title: "공개 예정", image: "blue")
        turquoiseButton.configuration = .capsuleStyle(title: "모두의 인기 콘텐츠", image: "turquoise")
        pinkButton.configuration = .capsuleStyle(title: "TOP 10 시리즈", image: "pink")
        
        mainLabel.text = "이런! 찾으시는 작품이 없습니다."
        mainLabel.textColor = .white
        mainLabel.textAlignment = .center
        mainLabel.font = .boldSystemFont(ofSize: 20)
        
        subLabel.text = "다른 영화, 시리즈, 배우, 감독 또는 장르를 검색해 보세요."
        subLabel.textColor = .gray
        subLabel.textAlignment = .center
        subLabel.font = .systemFont(ofSize: 15)
    }
    
    func setUpContstraints() {
        searchBar.snp.makeConstraints { make in
            make.top.leading.trailing.equalTo(view.safeAreaLayoutGuide)
        }
        
        buttonStackView.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).inset(-10)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(5)
            make.height.equalTo(30)
        }
        
        mainLabel.snp.makeConstraints { make in
            make.top.equalTo(buttonStackView.snp.bottom).inset(-100)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(30)
        }
        
        subLabel.snp.makeConstraints { make in
            make.top.equalTo(mainLabel.snp.bottom).inset(-10)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(20)
        }
    }
}
