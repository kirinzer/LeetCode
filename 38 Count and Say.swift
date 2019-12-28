class Solution {
    func countAndSay(_ n: Int) -> String {
        if n == 1 {
            return "1"
        }
        var stack = Array<Character>()
        var input = Array<Character>("1") // loop input
        var ouput = Array<Character>() // loop output
        var j = 0
        while j < n-1 {
            var i = 0
            while i < input.count {
                if i == 0 {
                    stack.append(input[i])
                } else {
                    //compare top with current
                    let top = stack.last ?? "0"
                    if top == input[i] {
                        // equal append
                        stack.append(input[i])
                    } else {
                        // ouput stack content
                        ouput.append(Character("\(stack.count)"))
                        ouput.append(stack.last ?? "0")
                        // not equal clean stack and append
                        stack.removeAll()
                        stack.append(input[i])
                    }
                }
                i += 1
            }
            // appen last stack content
            ouput.append(Character("\(stack.count)"))
            ouput.append(stack.last ?? "0")
            input = ouput
            
            // clean output, stack
            ouput.removeAll()
            stack.removeAll()
            
            j += 1
        }
        return String(input)
    }
}