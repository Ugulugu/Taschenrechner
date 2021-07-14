//
//  ContentView.swift
//  Taschenrechner
//
//  Created by Maximilian Schröder on 14.07.21.
//

import SwiftUI

struct ContentView: View {
    
    @State var text = ""
    @State var eingabe = ""
    @State var ergebnis = 0
    @State var tempErgebnis = 0
    @State var operation = -1
    @State var term = 0
    
    private var zero = 0
    private var one = 1
    private var two = 2
    private var three = 3
    
    
    var body: some View {
        
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            

            
            VStack{
                Text("Taschenrechner").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()

                
                TextField(text, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .padding()
                
                Spacer()
                VStack{
                    
                    HStack{
                        Button(action: {
                            text = text + "7"
                            eingabe = eingabe + "7"
                            term = Int(eingabe)!
                        }, label: {
                            Text("7")
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                                
                        })
                        Button(action: {
                            text = text + "8"
                            eingabe = eingabe + "8"
                            term = Int(eingabe)!
                        }, label: {
                            Text("8")
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            text = text + "9"
                            eingabe = eingabe + "9"
                            term = Int(eingabe)!
                        }, label: {
                            Text("9")
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            text = text + "/"
                            tempErgebnis = tempErgebnis / term
                            term = 0
                            eingabe = ""
                            
                            operation = 3
                        }, label: {
                            Text("/")
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        
                    }
                    HStack{
                        Button(action: {
                            text = text + "4"
                            eingabe = eingabe + "4"
                            term = Int(eingabe)!
                        }, label: {
                            Text("4")
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            text = text + "5"
                            eingabe = eingabe + "5"
                            term = Int(eingabe)!
                        }, label: {
                            Text("5")
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            text = text + "6"
                            eingabe = eingabe + "6"
                            term = Int(eingabe)!
                        }, label: {
                            Text("6")
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            text = text + "*"
                            
                            tempErgebnis = tempErgebnis * term
                            term = 0
                            eingabe = ""
                            
                            operation = 2
                        }, label: {
                            Text("*")
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                    }
                    HStack{
                        Button(action: {
                            text = text + "1"
                            eingabe = eingabe + "1"
                            term = Int(eingabe)!
                        }, label: {
                            Text("1")
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            text = text + "2"
                            eingabe = eingabe + "2"
                            term = Int(eingabe)!
                        }, label: {
                            Text("2")
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            text = text + "3"
                            eingabe = eingabe + "3"
                            term = Int(eingabe)!
                        }, label: {
                            Text("3")
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            text = text + "-"
                            print("Tempergebnis bei Minus: " + String(tempErgebnis))
                            print("Term bei Minus: " + String(term))
                            tempErgebnis = term
                            term = 0
                            eingabe = ""
                            
                            operation = 1
                        }, label: {
                            Text("-")
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                    }
                    HStack{
                        Button(action: {
                            text = text + "0"
                            eingabe = eingabe + "0"
                            term = Int(eingabe)!
                        }, label: {
                            Text("0")
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            text = ""
                            eingabe = ""
                            ergebnis = 0
                            tempErgebnis = 0
                            operation = -1
                            term = 0
                        }, label: {
                            Text("DEL")
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            //print("Tempergebnis bei Gleich: " + String(tempErgebnis))
                            //print("Term bei Gleich: " + String(term))
                            //tempErgebnis = tempErgebnis + Int(eingabe)!
                            //text = "Ergebnis: " + String(tempErgebnis)
                            
                            
                            if operation == 0 {
                                tempErgebnis = tempErgebnis + Int(eingabe)!
                                text = "Ergebnis: " + String(tempErgebnis)
                            }
                            else if operation == 1 {
                                tempErgebnis = tempErgebnis - Int(eingabe)!
                                text = "Ergebnis: " + String(tempErgebnis)
                            }
                            else if operation == 2 {
                                tempErgebnis = tempErgebnis * Int(eingabe)!
                                text = "Ergebnis: " + String(tempErgebnis)
                            }
                            else if operation == 3 {
                                tempErgebnis = tempErgebnis / Int(eingabe)!
                                text = "Ergebnis: " + String(tempErgebnis)
                            }
                            else {
                                text = "Kein gültiger Operator ausgewählt!"
                            }

                            
                        }, label: {
                            Text("=")
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            text = text + "+"
                            tempErgebnis = tempErgebnis + term
                            term = 0
                            eingabe = ""
                            
                            operation = 0
                        }, label: {
                            Text("+")
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
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
}
