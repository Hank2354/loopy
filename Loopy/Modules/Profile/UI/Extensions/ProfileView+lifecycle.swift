//
//  ProfileView+lifecycle.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

extension ProfileView {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.viewDidLoad()
        configPlates()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        model.viewWillAppear()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        model.viewDidAppear()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        model.viewWillDisappear()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        model.viewDidDisappear()
    }
}
