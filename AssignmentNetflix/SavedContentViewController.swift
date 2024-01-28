//
//  SavedContentViewController.swift
//  AssignmentNetflix
//
//  Created by Jaehui Yu on 12/27/23.
//

import UIKit

class SavedContentViewController: UIViewController {
    
    let mainLabel = UILabel()
    let subLabel = UILabel()
    let dummyImageView = UIImageView()
    let settingButton = UIButton()
    let exploreButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "저장한 콘텐츠 목록"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        configureHierarchy()
        configureView()
        setUpContstraints()
    }
    
    func configureHierarchy() {
        view.addSubview(mainLabel)
        view.addSubview(subLabel)
        view.addSubview(dummyImageView)
        view.addSubview(settingButton)
        view.addSubview(exploreButton)
    }
    
    func configureView() {
        mainLabel.text = "'나만의 자동 저장' 기능"
        mainLabel.textColor = .white
        mainLabel.textAlignment = .center
        mainLabel.font = .boldSystemFont(ofSize: 20)
        
        subLabel.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해드립니다.\n디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 없어요."
        subLabel.textColor = .gray
        subLabel.textAlignment = .center
        subLabel.font = .systemFont(ofSize: 15)
        subLabel.numberOfLines = 0
        
        dummyImageView.image = UIImage(named: "dummy")
        dummyImageView.contentMode = .scaleAspectFit
        
        settingButton.configuration = .smallStyle(title: "설정하기", foreground: .white, background: .systemBlue)
        
        exploreButton.configuration = .smallStyle(title: "저장 가능한 콘텐츠 살펴보기", foreground: .black, background: .white)
    }
    
    func setUpContstraints() {
        mainLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.height.equalTo(30)
        }
        
        subLabel.snp.makeConstraints { make in
            make.top.equalTo(mainLabel.snp.bottom).inset(-10)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.height.equalTo(80)
        }
        
        dummyImageView.snp.makeConstraints { make in
            make.top.equalTo(subLabel.snp.bottom).inset(-20)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
        }
        
        settingButton.snp.makeConstraints { make in
            make.top.equalTo(dummyImageView.snp.bottom).inset(-20)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(300)
        }
        
        exploreButton.snp.makeConstraints { make in
            make.top.equalTo(settingButton.snp.bottom).inset(-20)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(300)
        }
    }
}
