import Foundation

func setup(path: String) {
    let fileManager = NSFileManager.defaultManager()

    if !fileManager.fileExistsAtPath(path) {
        print("Creating ~/.binc directory")
        
        do {
            try fileManager.createDirectoryAtPath(path, withIntermediateDirectories: true, attributes: nil)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
}