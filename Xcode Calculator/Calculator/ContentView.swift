//
//  ContentView.swift
//  Calculator
//
//  Created by big money ethan on 4/16/25.
//

import SwiftUI

class Compute: ObservableObject {
    @Published var disp: Double
    
    init() {
        disp = 0.0
    }
    
    func clear() {
        disp = 0.0
    }
    
    func eq(eq: Double, arg2: Double) {
        if (eq == 1) {
            disp += arg2
        }
        if (eq == 2) {
            disp -= arg2
        }
        if (eq == 3) {
            disp *= arg2
        }
        if (eq == 4) {
            if (arg2 != 0) {
                disp /= arg2
            } else {
                disp = 0
            }
        }
    }
}

struct ContentView: View {
    
    @StateObject var num = Compute()
    @State var next = 0.0
    @State var nextEq = 0.0
    @State var reset = false
    @State var ce = false
    @State var dec = false
    @State var decMult = 1.0
    @State var nonDecMult = 10.0
    
    var body: some View {
        VStack {
            if (next == Double(Int(next))) {
                Text(String(Int(next)))
                    .bold()
                    .font(.largeTitle)
                    .padding()
            } else {
                Text(String(next))
                    .bold()
                    .font(.largeTitle)
                    .padding()
            }
            
            HStack {
                if (ce == false) {
                    Button(action: {
                        num.clear()
                        next = 0.0
                        dec = false
                        decMult = 1.0
                        nonDecMult = 10
                    }) {
                        Text("c")
                            .padding()
                            .frame(width: 60, height: 60)
                            .background(
                                Circle().fill(Color.red)
                            )
                            .foregroundColor(.black)
                    }
                } else {
                    Button(action: {
                        next = 0.0
                        ce = false
                        dec = false
                        decMult = 1.0
                        nonDecMult = 10
                    }) {
                        Text("ce")
                            .padding()
                            .frame(width: 60, height: 60)
                            .background(
                                Circle().fill(Color.red)
                            )
                            .foregroundColor(.black)
                    }
                }
                
                Button(action: {
                    next *= -1.0
                }) {
                    Text("+/-")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.orange)
                        )
                        .foregroundColor(.black)
                }
                
                Button(action: {
                    nextEq = 4
                    num.disp = next
                    reset = true
                    dec = false
                    decMult = 1
                }) {
                    Text("/")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.yellow)
                        )
                        .foregroundColor(.black)
                }
                
                Button(action: {
                    nextEq = 3
                    num.disp = next
                    reset = true
                    dec = false
                    decMult = 1
                }) {
                    Text("x")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.green)
                        )
                        .foregroundColor(.black)
                }
            }
            
            HStack {
                Button(action: {
                    if (dec == true) {
                        decMult *= 0.1
                    }
                    if (reset != true) {
                        next = next * nonDecMult + 7 * decMult
                    } else {
                        next = 7
                        reset = false
                    }
                    ce = true
                }) {
                    Text("7")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.orange)
                        )
                        .foregroundColor(.black)
                }
                
                Button(action: {
                    if (dec == true) {
                        decMult *= 0.1
                    }
                    if (reset != true) {
                        next = next * nonDecMult + 8 * decMult
                    } else {
                        next = 8
                        reset = false
                    }
                    ce = true
                }) {
                    Text("8")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.yellow)
                        )
                        .foregroundColor(.black)
                }
                
                Button(action: {
                    if (dec == true) {
                        decMult *= 0.1
                    }
                    if (reset != true) {
                        next = next * nonDecMult + 9 * decMult
                    } else {
                        next = 9
                        reset = false
                    }
                    ce = true
                }) {
                    Text("9")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.green)
                        )
                        .foregroundColor(.black)
                }
                
                Button(action: {
                    nextEq = 2
                    num.disp = next
                    reset = true
                    dec = false
                    decMult = 1
                }) {
                    Text("-")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.blue)
                        )
                        .foregroundColor(.black)
                }
            }
            
            HStack {
                Button(action: {
                    if (dec == true) {
                        decMult *= 0.1
                    }
                    if (reset != true) {
                        next = next * nonDecMult + 4 * decMult
                    } else {
                        next = 4
                        reset = false
                    }
                    ce = true
                }) {
                    Text("4")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.yellow)
                        )
                        .foregroundColor(.black)
                }
                
                Button(action: {
                    if (dec == true) {
                        decMult *= 0.1
                    }
                    if (reset != true) {
                        next = next * nonDecMult + 5 * decMult
                    } else {
                        next = 5
                        reset = false
                    }
                    ce = true
                }) {
                    Text("5")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.green)
                        )
                        .foregroundColor(.black)
                }
                Button(action: {
                    if (dec == true) {
                        decMult *= 0.1
                    }
                    if (reset != true) {
                        next = next * nonDecMult + 6 * decMult
                    } else {
                        next = 6
                        reset = false
                    }
                    ce = true
                }) {
                    Text("6")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.blue)
                        )
                        .foregroundColor(.black)
                }
                
                Button(action: {
                    nextEq = 1
                    num.disp = next
                    reset = true
                    dec = false
                    decMult = 1
                }) {
                    Text("+")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.purple)
                        )
                        .foregroundColor(.black)
                }
            }
            
            HStack {
                Button(action: {
                    if (dec == true) {
                        decMult *= 0.1
                    }
                    if (reset != true) {
                        next = next * nonDecMult + 1 * decMult
                    } else {
                        next = 1
                        reset = false
                    }
                    ce = true
                }) {
                    Text("1")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.green)
                        )
                        .foregroundColor(.black)
                }
                
                Button(action: {
                    if (dec == true) {
                        decMult *= 0.1
                    }
                    if (reset != true) {
                        next = next * nonDecMult + 2 * decMult
                    } else {
                        next = 2
                        reset = false
                    }
                    ce = true
                }) {
                    Text("2")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.blue)
                        )
                        .foregroundColor(.black)
                }
                
                Button(action: {
                    if (dec == true) {
                        decMult *= 0.1
                    }
                    if (reset != true) {
                        next = next * nonDecMult + 3 * decMult
                    } else {
                        next = 3
                        reset = false
                    }
                    ce = true
                }) {
                    Text("3")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.purple)
                        )
                        .foregroundColor(.black)
                }
                
                Button(action: {
                    num.eq(eq: nextEq, arg2: next)
                    next = num.disp
                    num.disp = 0
                    dec = false
                    decMult = 1
                }) {
                    Text("=")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.red)
                        )
                        .foregroundColor(.black)
                }
            }
            
            HStack {
                Button(action: {
                    if (dec == true) {
                        decMult *= 0.1
                    }
                    if (reset != true) {
                        next = next * 10
                    } else {
                        next = 0
                        reset = false
                    }
                    ce = true
                }) {
                    Text("0")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.purple)
                        )
                        .foregroundColor(.black)
                }
                
                Button(action: {
                    dec = true
                    nonDecMult = 1
                }) {
                    Text(".")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(
                            Circle().fill(Color.red)
                        )
                        .foregroundColor(.black)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
