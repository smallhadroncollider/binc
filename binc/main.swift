//
//  binc
//
//  Created by Mark Wales on 02/04/2016.
//  Copyright © 2016 Mark Wales. All rights reserved.
//
//  Yaml code from https://github.com/behrang/YamlSwift
//

import Foundation

var configs: [String] = ["brew", "cask", "npm", "composer", "gem"]

var binc = NSURL(fileURLWithPath: NSHomeDirectory()).URLByAppendingPathComponent(".binc", isDirectory: true).path!

setup(binc)

var brew = Brew(config: yaml("\(binc)/brew.yml") ?? nil, shell: shell)
brew.install()