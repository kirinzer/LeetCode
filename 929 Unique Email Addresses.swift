class Solution {
    func numUniqueEmails(_ emails: [String]) -> Int {
        let inputArray: Array<String> = Array(emails)
        var resultArray: Array<String> = Array()
        for item in emails {
            var newItem: String = item.replacingOccurrences(of: "@", with: "+")
            var array: Array = newItem.split(separator: "+")
            let firstObj = array.first
            var lastObj = array.last
            var localName: String = firstObj?.replacingOccurrences(of: ".", with: "") ?? ""
            let finalMail = localName+"@"+(lastObj ?? "")
            resultArray.append(finalMail)
        }
        var aSet = Set.init(resultArray)
        return aSet.count
    }
}