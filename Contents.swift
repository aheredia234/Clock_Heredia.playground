import UIKit

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true



var seconds = 55
var minutes = 59
var hours = 0

let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ timer in
    seconds += 1
    
    if(seconds<60)
    {
        print("\n",String(format: "%02d", hours), ":", String(format: "%02d", minutes), ":", String(format: "%02d", seconds))
        
    }
    if(seconds>=60&&minutes<60)
    {
        seconds = seconds-60
        if(minutes<59)
        {
             minutes+=1
            print("\n",String(format: "%02d", hours), ":", String(format: "%02d", minutes), ":", String(format: "%02d", seconds))
            
        }
        else{
            minutes = 0;
            hours += 1;
            print("\n",String(format: "%02d", hours), ":", String(format: "%02d", minutes), ":", String(format: "%02d", seconds))
        }
    }
    
}
