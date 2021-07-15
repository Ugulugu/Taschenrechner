//
//  ContentView.swift
//  Taschenrechner
//
//  Created by Maximilian Schröder on 14.07.21.
//

import SwiftUI

struct ContentView: View {
    
    //Angezeigter Text im Textfield
    @State var text = ""
    
    //Hilfsvariable um die einzelnen Terme zu ermitteln ohne Operatoren
    @State var eingabe = ""
    
    //Variable Ergebnis wird zur Zeit nicht benutzt. Könnte man später noch gebrauchen, wenn man mehrfach hintereinander auf = klicken darf
    //@State var ergebnis = 0
    
    //Zwischenergebnis, das momentan auch als Endergebnis benutzt wird
    @State var tempErgebnis = 0
    
    //Hiermit wird der gewünschte Operator festgelegt. Default bei -1
    @State var operation = -1
    
    //Aktueller Term, die im Laufe der Rechnung stets neu definiert wird
    @State var term = 0
    
    //Wert dafür, ob es sich um eine neue Rechnung handelt oder ob jemand mehrfach hintereinander auf = gedrückt hat
    @State var status = 0
    
    
    let buttonSize = 75
    var body: some View {
        
        //ZStack bildet eine Tiefenebene auf der Objekte (Texte etc.) platziert werden können
        ZStack{
            
            //Setzt die Hintergrundfarbe auf grau und ignoriert die SafeArea -> geht also über den gesamten Bildschirm inkl. der Felder ganz oben für Uhrzeit, Akku etc.
            Color.gray
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            //VStack teilt den Bildschirm in vertikale Bereiche auf
            VStack{
                //Überschrift wird festgelegt
                Text("Taschenrechner").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                //Textfield in der die Rechnung steht
                TextField(text, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    //Rahmen um das Textfeld
                    .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    //Farbe des Rahmen
                    .border(Color.black)
                    //Rundet die Ecken ab (nur aus Designgründen)
                    .cornerRadius(10)
                    //Kontrolliert den Platz um das Textfield
                    .padding()
                
                //Spacer schafft Platz zwischen den einzelnen Elementen (Textfield und Buttons)
                Spacer()
                
                //Ein weiterer vertikaler Stack, in dem nun die einzelnen Buttons platziert werden
                VStack{
                    
                    // Erster HStack, der die oberste Reihe der Buttons definiert
                    HStack{
                        //Normaler Button mit der Inschrift 7
                        Button(action: {
                            //Erweitert den angezeigten Text im Textfield um den String "7"
                            text = text + "7"
                            //eingabe wird für die Berechnung später benötigt und beschreibt den entstandenen Term
                            eingabe = eingabe + "7"
                            //eingabe wird zu term. Die Variable eingabe war zunächst ein String und wird mit dem Befehl Int(eingabe) zu einem Integer-Wert gecastet
                            term = Int(eingabe)!
                        }, label: {
                            //Angezeigter Text des Buttons
                            Text("7")
                                //Textfarbe des Buttons
                                .foregroundColor(.white)
                                //Rahmen und Größe des Buttons
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                //Rahmenfarbe
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                //Abgerundete Ecken, weil schöner
                                .cornerRadius(10)
                                //Kontrolliert den Platz um den Button
                                .padding()
                                
                        })
                        Button(action: {
                            text = text + "8"
                            eingabe = eingabe + "8"
                            term = Int(eingabe)!
                        }, label: {
                            Text("8")
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            text = text + "/"
                            tempErgebnis = term
                            term = 0
                            eingabe = ""
                            
                            //Anhand der folgenden Variable wird entschieden, welche Rechenform angewendet werden soll (s. Button "=", if-Abfragen)
                            operation = 3
                        }, label: {
                            Text("/")
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            text = text + "*"
                            tempErgebnis = term
                            
                            term = 0
                            eingabe = ""
                            
                            //Anhand der folgenden Variable wird entschieden, welche Rechenform angewendet werden soll (s. Button "=", if-Abfragen)
                            operation = 2
                        }, label: {
                            Text("*")
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            text = text + "-"
                            tempErgebnis = term
                            term = 0
                            eingabe = ""
                            
                            //Anhand der folgenden Variable wird entschieden, welche Rechenform angewendet werden soll (s. Button "=", if-Abfragen)
                            operation = 1
                        }, label: {
                            Text("-")
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        
                        //Löscht alle Eingaben für eine neue Aufgabe
                        Button(action: {
                            text = ""
                            eingabe = ""
                            tempErgebnis = 0
                            operation = -1
                            term = 0
                            
                            
                            status = 0 
                        }, label: {
                            Text("DEL")
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            print("Letzter Term (eingabe): " + String(eingabe))
                            
                            //Es wird geprüft, ob es eine neue Aufgabe ist. Wenn ja wird diese ausgeführt. Es muss immer eine neue Aufgabe geben.
                            if status == 0 {
                                status = 1
                            
                            
                            if operation == 0 {
                                tempErgebnis = tempErgebnis + Int(eingabe)!
                                text = text + "=" + String(tempErgebnis)
                            }
                            else if operation == 1 {
                                tempErgebnis = tempErgebnis - Int(eingabe)!
                                text = text + "=" + String(tempErgebnis)
                            }
                            else if operation == 2 {
                                tempErgebnis = tempErgebnis * Int(eingabe)!
                                text = text + "=" + String(tempErgebnis)
                            }
                            else if operation == 3 {
                                tempErgebnis = tempErgebnis / Int(eingabe)!
                                text = text + "=" + String(tempErgebnis)
                            }
                            else {
                                text = "Kein gültiger Operator ausgewählt!"
                            }
                            }
                            //Wenn zweimal hintereinander auf = gedrückt wird, gibt es diese Meldung. Es muss immer eine neue Aufgabe geben.
                            else {
                                text = "Erst löschen und dann neue Aufgabe eingeben"
                            }
                            
                        }, label: {
                            Text("=")
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                                .padding()
                        })
                        Button(action: {
                            text = text + "+"
                            tempErgebnis = tempErgebnis + term
                            term = 0
                            eingabe = ""
                            
                            //Anhand der folgenden Variable wird entschieden, welche Rechenform angewendet werden soll (s. Button "=", if-Abfragen)
                            operation = 0
                        }, label: {
                            Text("+")
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
