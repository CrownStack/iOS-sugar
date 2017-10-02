import Foundation

public extension String {
    
    var length: Int { return characters.count }
    var isPresent: Bool { return !isEmpty }
    
    func replace(_ string: String, with withString: String) -> String {
        return replacingOccurrences(of: string, with: withString)
    }
    
    func truncate(_ length: Int, suffix: String = "...") -> String {
        return self.length > length
            ? substring(to: characters.index(startIndex, offsetBy: length)) + suffix
            : self
    }
    
    func split(_ delimiter: String) -> [String] {
        let components = self.components(separatedBy: delimiter)
        return components != [""] ? components : []
    }
    
    func trim() -> String {
        return trimmingCharacters(in: CharacterSet.whitespaces)
    }
    
    var uppercaseFirstLetter: String {
        guard isPresent else { return self }
        
        var string = self
        string.replaceSubrange(string.startIndex...string.startIndex,
                               with: String(string[string.startIndex]).capitalized)
        
        return string
    }
    
    func dateFromString() -> String? {
        let dateFormatter = DateFormatter.init()
        dateFormatter.dateFormat = DateFormat.api.rawValue
        guard let date = dateFormatter.date(from: self) else {
            return ""
        }
        dateFormatter.dateFormat = DateFormat.pastRecording.rawValue
        return dateFormatter.string(from: date)
    }
}
