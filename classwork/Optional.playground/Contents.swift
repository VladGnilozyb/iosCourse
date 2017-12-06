var str: String?
var consStr: String? = "constant"
 var tempStr = consStr?.append("a")
if let str =  str, let consStr = consStr {
    let resultString = consStr + str
    print(resultString)
    
}


