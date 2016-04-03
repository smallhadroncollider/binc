import Foundation

func yaml(path: String) -> Yaml? {
    let fileManager = NSFileManager.defaultManager()
    
    guard fileManager.fileExistsAtPath(path) else {
        debugPrint("File not found: \(path)")
        return nil
    }
    
    do {
        let content = try String(contentsOfFile: path, encoding: NSUTF8StringEncoding)
        return Yaml.load(content).value!
    } catch {
        return nil
    }
}