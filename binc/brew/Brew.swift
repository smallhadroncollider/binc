struct Brew {
    private let bin: String = "/usr/local/bin/brew"
    private var config: Yaml
    
    typealias Shell = (String, arguments: [String]) -> [String]
    private var shell: Shell
    
    init(config: Yaml, shell: Shell) {
        self.config = config
        self.shell = shell
    }
    
    internal func install() {
        self.installTaps()
        self.installBinaries()
    }
    
    private func installTaps() {
        let installedTaps = bin(["tap"]).filter({tap in !tap.containsString("caskroom/")})
        let tapsToInstall = filter(config("taps"), with: installedTaps)
        
        if !tapsToInstall.isEmpty {
            let tapString = join(tapsToInstall)
            print("brew: tapping \(tapString)")
            bin(["tap", tapString])
        } else {
            print("brew: no untapped taps")
        }
    }
    
    private func installBinaries() {
        let packagesToInstall = filter(config("packages"), with: bin(["list"]))
        
        if !packagesToInstall.isEmpty {
            let packageString = join(packagesToInstall)
            print("brew: installing \(packageString)")
            bin(["install", packageString])
        } else {
            print("brew: no packages to install")
        }
    }
    
    private func join(list: [String]) -> String {
        return list.joinWithSeparator(" ")
    }
    
    private func filter(from: [String], with: [String]) -> [String] {
        return from.filter({string in !with.contains(string)})
    }
    
    private func config(key: Yaml) -> [String] {
        return self.config[key].array!.map({ (yaml: Yaml) -> String in yaml.string!})
    }
    
    private func bin(arguments: [String]) -> [String] {
        return self.shell(bin, arguments: arguments)
    }
}