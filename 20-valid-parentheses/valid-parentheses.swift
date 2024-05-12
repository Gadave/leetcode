class Solution {
    func isValid(_ s: String) -> Bool {
        var brackets = [Character]()
        for c in s {
            if isClosingBracket(c) {
                if brackets.isEmpty { return false }
                let last = brackets.removeLast()
                if !isPair(last, c) { return false }
            } else {
                brackets.append(c)
            }
        }

        return brackets.isEmpty
    }

    func isClosingBracket(_ c: Character) -> Bool {
        let brackets: [Character] = [")", "]", "}"]
        return brackets.contains(where: { $0 == c }) 
    }

    func isPair(_ o: Character, _ c: Character) -> Bool {
        switch o {
            case "(":
            return c == ")"
            case "[":
            return c == "]"
            case "{":
            return c == "}"
            default:
            fatalError()
        }
    }
}