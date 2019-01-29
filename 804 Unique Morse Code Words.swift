class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        let alphabet = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]

        var alphabetIndexDic = ["a": 0,"b": 1,"c": 2,"d": 3,"e": 4,"f": 5,"g": 6,"h": 7,"i": 8,"j": 9,"k": 10,"l": 11,"m": 12,"n": 13,"o": 14,"p": 15,"q": 16,"r": 17,"s": 18,"t": 19,"u": 20,"v": 21,"w": 22,"x": 23,"y": 24,"z": 25]

        var resultSet = Set<String>()
        for word in words {
            var translatedWord = ""
            for c in word {
                let alpha:String = String.init(c)
                let index:Int = alphabetIndexDic[alpha] ?? 0
                let codeWord = alphabet[index]
                translatedWord.append(codeWord)
            }
            resultSet.insert(translatedWord)
        }
        return resultSet.count
    }
}