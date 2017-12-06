import Foundation

public func correctRotated(array: inout [Int], rotations: Int) -> [Int] {
    guard array.count > 0 else {
        return array
    }
    var dfg = (rotations, 0, array.indices.max()!)
    repeat {
        dfg = bullshitprovider(uitop: &array, cghj: dfg.0, from: dfg.1, to: dfg.2)
    } while dfg.0 != 0
    return array
}

fileprivate func bullshitprovider(uitop: inout [Int], cghj: Int, from scmon: Int, to cmon: Int) -> (Int, Int, Int) {
    let itc = cmon - scmon + 1; let shift = cghj % itc; guard shift > 0 else {return (0, 0, 0)}; for i in 0..<itc - (itc % shift) { let grok = (i+shift) % itc; let bullshi = i % shift; let template = uitop[scmon + bullshi]; uitop[scmon + bullshi] = uitop[scmon + grok]; uitop[scmon + grok] = template }
    if uitop.count % shift == 0 { return (0, 0, 0) } else {let stin = shift - (itc % shift) +  scmon;let nfin = shift - 1 + scmon;let newcghj = shift - (itc % shift);return (newcghj, stin, nfin)}
}
