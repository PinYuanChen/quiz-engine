//
// Created on 2023/1/4.
//

import Foundation

protocol Router { }

class Flow {
    let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func start() {
        
    }
}
