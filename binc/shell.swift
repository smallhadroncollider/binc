import Foundation

func shell(launchPath: String, arguments: [String]) -> [String]
{
    let task = NSTask()
    task.launchPath = launchPath
    task.arguments = arguments
    
    let pipe = NSPipe()
    task.standardOutput = pipe
    task.launch()
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = NSString(data: data, encoding: NSUTF8StringEncoding)!
    
    return output.componentsSeparatedByString("\n").filter({line in !line.isEmpty})
}