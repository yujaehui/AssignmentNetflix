//
//  HomeViewController.swift
//  AssignmentNetflix
//
//  Created by Jaehui Yu on 12/27/23.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    let scrollView = UIScrollView()
    let mainImageView = UIImageView()
    let buttonStackView = UIStackView()
    let playButton = UIButton()
    let wishButton = UIButton()
    let contentLabel = UILabel()
    let imageStackView = UIStackView()
    let firstImageView = UIImageView()
    let secondImangeView = UIImageView()
    let thridImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "재희님"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.backgroundColor = .black
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
        
        let tapApperance = UITabBarAppearance()
        tapApperance.configureWithOpaqueBackground()
        tapApperance.backgroundColor = .secondaryLabel
        tabBarController?.tabBar.standardAppearance = tapApperance
        tabBarController?.tabBar.scrollEdgeAppearance = tabBarController?.tabBar.standardAppearance
        
        configureHierarchy()
        configureView()
        setUpContstraints()
    }
    
    func configureHierarchy() {
        view.addSubview(scrollView)
        scrollView.addSubview(mainImageView)
        mainImageView.addSubview(buttonStackView)
        buttonStackView.addArrangedSubview(playButton)
        buttonStackView.addArrangedSubview(wishButton)
        scrollView.addSubview(contentLabel)
        scrollView.addSubview(imageStackView)
        imageStackView.addArrangedSubview(firstImageView)
        imageStackView.addArrangedSubview(secondImangeView)
        imageStackView.addArrangedSubview(thridImageView)
    }
    
    func configureView() {
        mainImageView.image = UIImage(named: "스즈메의문단속")
        mainImageView.clipsToBounds = true
        mainImageView.layer.cornerRadius = 10
        
        buttonStackView.alignment = .center
        buttonStackView.distribution = .fillEqually
        buttonStackView.spacing = 10
        
        playButton.configuration = .largeStyle(title: "재생", image: "play.fill", foreground: .black, background: .white)
        
        wishButton.configuration = .largeStyle(title: "내가 찜한 리스트", image: "plus", foreground: .white, background: .darkGray)
        
        contentLabel.text = "지금 뜨는 콘텐츠"
        contentLabel.textColor = .white
        
        imageStackView.alignment = .center
        imageStackView.distribution = .fillEqually
        imageStackView.spacing = 10
        imageStackView.axis = .horizontal
        
        firstImageView.image = UIImage(named: "밀수")
        firstImageView.clipsToBounds = true
        firstImageView.layer.cornerRadius = 5
        
        secondImangeView.image = UIImage(named: "밀수")
        secondImangeView.clipsToBounds = true
        secondImangeView.layer.cornerRadius = 5
        
        thridImageView.image = UIImage(named: "밀수")
        thridImageView.clipsToBounds = true
        thridImageView.layer.cornerRadius = 5
    }
    
    func setUpContstraints() {
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        mainImageView.snp.makeConstraints { make in
            make.top.equalTo(scrollView).inset(10)
            make.centerX.equalTo(scrollView)
            make.width.equalTo(scrollView).inset(30)
            make.height.equalTo(mainImageView.snp.width).dividedBy(2.0/3.0)
        }
        
        buttonStackView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(mainImageView).inset(10)
            make.height.equalTo(30)
            make.bottom.equalTo(mainImageView).inset(10)
        }
        
        contentLabel.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.bottom).offset(10)
            make.leading.trailing.equalTo(scrollView).inset(15)
            make.height.equalTo(20)
        }
        
        imageStackView.snp.makeConstraints { make in
            make.top.equalTo(contentLabel.snp.bottom).offset(10)
            make.leading.trailing.equalTo(view).inset(10)
            make.bottom.equalTo(scrollView)
        }
        
        let imageWidth = (view.frame.width - 50) / 3
        let imageHeight = imageWidth * 3 / 2
        
        firstImageView.snp.makeConstraints { make in
            make.width.equalTo(imageWidth)
            make.height.equalTo(imageHeight)
        }
        
        secondImangeView.snp.makeConstraints { make in
            make.width.equalTo(imageWidth)
            make.height.equalTo(imageHeight)
        }
        
        thridImageView.snp.makeConstraints { make in
            make.width.equalTo(imageWidth)
            make.height.equalTo(imageHeight)
        }
    }
}
