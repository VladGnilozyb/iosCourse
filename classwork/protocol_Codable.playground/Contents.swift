import Foundation

struct Country : Codable {
    let name: String
    let population: Int
    let neubourhs: [Country]
}

let countryString =  """
 {
  "name": "Belarus",
  "population": 1312313123,
   "neubourhs": [
 {
 "name": "Poland",
 "population": 3123123
 },
 {
 "name": "Latvia",
 "population": 3123131
 }
 ]
}
""".data(using: .utf8)

if let countryString = countryString {
    let myStruct =  try JSONDecoder().decode(Country.self, from: countryString)
    print(myStruct)
    
}


