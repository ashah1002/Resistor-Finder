//
//  ContentView.swift
//  Resistor Finder
//
//  Created by Aaditya Shah on 4/11/21.
// App Background Credit: Designed by Layerace / Freepik -> http://www.freepik.com
// Logo Credit: https://www.flaticon.com/authors/surang
// UIScreen Extension Credit: https://stackoverflow.com/users/6493659/bestiosdeveloper

import SwiftUI


extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}


struct ContentView: View {
   
    var valuecolors = ["Black", "Brown", "Red", "Orange", "Yellow", "Green", "Blue", "Violet", "Gray", "White"]
    var valuecolors2 = ["Black", "Brown", "Red", "Orange", "Yellow", "Green", "Blue", "Violet", "Gray", "White"]
    var multiplierclr = ["Black", "Brown", "Red", "Orange", "Yellow", "Green", "Blue", "Violet", "Gray", "White"]
    
    @State var value1 = 0
    
    @State var value2 = 0
    
    @State var value3 = 0

    @State var finalvalue = 0
    
    @State var finalword = "Ω"
    
    @State var finalvalue2 = 0
    
    @State var button1width = 80
    
    @State var button1height = 80
    
    @State var button2width = 120
    
    @State var button2height = 80
    
    var body: some View {
        
        ZStack {
            
            Image("back4app").resizable().scaledToFill().ignoresSafeArea()
            
            VStack {
                           
        
                Spacer()
                
                Text(String(finalvalue2) + finalword)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    .frame(width: UIScreen.screenWidth/2, height: 80)
                        .background(Color.blue)
                        .cornerRadius(10)
                
                Spacer()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20.0) {
                        ForEach(0..<10) {
                            
                            let crntcolor = valuecolors[($0)]
                            
                            Button(action: {
                                
                                if crntcolor == "Black" {
                                    value1 = 0
                                }
                                else if crntcolor == "Brown" {
                                    value1 = 1
                                }
                                else if crntcolor == "Red" {
                                    value1 = 2
                                }
                                else if crntcolor == "Orange" {
                                    value1 = 3
                                }
                                else if crntcolor == "Yellow" {
                                    value1 = 4
                                }
                                else if crntcolor == "Green" {
                                    value1 = 5
                                }
                                else if crntcolor == "Blue" {
                                    value1 = 6
                                }
                                else if crntcolor == "Violet" {
                                    value1 = 7
                                }
                                else if crntcolor == "Gray" {
                                    value1 = 8
                                }
                                else if crntcolor == "White" {
                                    value1 = 9
                                }
                            }, label: {
                                Text(crntcolor)
                                    .foregroundColor(.white)
                                    .frame(width: CGFloat(button1width), height: CGFloat(button1height))
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            })
                            
     
                              
                        }
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20.0) {
                        ForEach(0..<10) {
                            
                            let crntcolor2 = valuecolors[($0)]
                            
                            Button(action: {
                                
                                if crntcolor2 == "Black" {
                                    value2 = 0
                                }
                                else if crntcolor2 == "Brown" {
                                    value2 = 1
                                }
                                else if crntcolor2 == "Red" {
                                    value2 = 2
                                }
                                else if crntcolor2 == "Orange" {
                                    value2 = 3
                                }
                                else if crntcolor2 == "Yellow" {
                                    value2 = 4
                                }
                                else if crntcolor2 == "Green" {
                                    value2 = 5
                                }
                                else if crntcolor2 == "Blue" {
                                    value2 = 6
                                }
                                else if crntcolor2 == "Violet" {
                                    value2 = 7
                                }
                                else if crntcolor2 == "Gray" {
                                    value2 = 8
                                }
                                else if crntcolor2 == "White" {
                                    value2 = 9
                                }
                                
                            }, label: {
                                Text(crntcolor2)
                                    .foregroundColor(.white)
                                    .frame(width: CGFloat(button1width), height: CGFloat(button1height))
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            })
                            
     
                              
                        }
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20.0) {
                        ForEach(0..<10) {
                            
                            let crntmultiplier = multiplierclr[($0)]
                            
                            Button(action: {
                                
                                if crntmultiplier == "Black" {
                                    value3 = 1
                                }
                                else if crntmultiplier == "Brown" {
                                    value3 = 10
                                }
                                else if crntmultiplier == "Red" {
                                    value3 = 100
                                }
                                else if crntmultiplier == "Orange" {
                                    value3 = 1000
                                }
                                else if crntmultiplier == "Yellow" {
                                    value3 = 10000
                                }
                                else if crntmultiplier == "Green" {
                                    value3 = 100000
                                }
                                else if crntmultiplier == "Blue" {
                                    value3 = 1000000
                                }
                                else if crntmultiplier == "Violet" {
                                    value3 = 10000000
                                }
                                else if crntmultiplier == "Gray" {
                                    value3 = 100000000
                                }
                                else if crntmultiplier == "White" {
                                    value3 = 1000000000
                                }
                                
                            }, label: {
                                Text(crntmultiplier)
                                    .foregroundColor(.white)
                                    .frame(width: CGFloat(button1width), height: CGFloat(button1height))
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            })
                            
     
                              
                        }
                    }
                }
                
                Spacer()
                
                Group {
                    Button(action: {
                        
                        finalvalue = (((10 * value1) + (1 * value2))) * value3

                        
                        if finalvalue < 1000 {
                            finalvalue2 = finalvalue
                            finalword = "Ω"
                        }
                        
                        if finalvalue > 1000 {
                            finalvalue2 = finalvalue/1000
                            finalword = "kΩ"
                        }
                       
                    
                        
                    }, label: {
                        Text("Find Value")
                            .foregroundColor(.white)
                            .frame(width: CGFloat(button2width), height: CGFloat(button2height))
                            .background(Color.blue)
                            .cornerRadius(20)
                })
                    
                    Button(action: {
                        
                        if UIDevice.current.localizedModel == "iPhone" {
                             button1width = 80
                             button1height = 80
                             button2width = 120
                             button2height = 80
                        } else if UIDevice.current.localizedModel == "iPad" {
                            button1width = 100
                            button1height = 100
                            button2width = 150
                            button2height = 100
                        }
                        
                    }, label: {
                        Text("Adjust to My Screen Size")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: UIScreen.screenWidth/2 + 10, height: 40)
                            .background(Color.blue)
                            .cornerRadius(20).padding(.all)
                })
                }
                
                Group {
                    
                    Label("Background Designed by Layerace / Freepik", systemImage: "exclamationmark.circle.fill")
                
                    Link("Logo Made By Surang",
                          destination: URL(string: "https://www.flaticon.com/authors/surang")!)
                    
                }
                
                
                Spacer()
                
            
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
