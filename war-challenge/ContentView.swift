//
//  ContentView.swift
//  war-challenge
//
//  Created by Slava Havvk on 25.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card"
    @State var cpuCard = "card"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    var body: some View {
        
        
        ZStack {
            
            Image("background").ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    //Generate random number of cards
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //Update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if(playerRand < cpuRand){
                        cpuScore += 1
                    }
                }, label: {
                    Image("dealbutton")
                })
                
                //Image("dealbutton")
                Spacer()
                VStack {
                    HStack {
                        Spacer()
                        VStack {
                            Text("Player")
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 10.0)
                            Text(String(playerScore))
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        VStack {
                            Text("CPU")
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 10.0)
                            Text(String(cpuScore))
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                    }

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
