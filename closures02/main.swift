//
//  main.swift
//  closures02
//
//  Created by XCODE on 2015/10/20.
//  Copyright © 2015年 Nick. All rights reserved.
//

import Foundation

//When function as a parameter , 如果沒有回傳值,請加 void
func countDown(sec:Int,timeOutClosures:() -> Void) -> Void{
    
    for var i=sec; i>=0; i-- {
        
        if i != 0{
            
           print("倒數\(i)秒")
        }else{
            
            timeOutClosures()
        }
        
    }//end for loop
    
}//end countDown func

func timeOut() -> Void{
    print("時間到\n")
}
countDown(3, timeOutClosures: timeOut)

countDown(5) { () -> Void in
    print("第二次時間到\n")
}
countDown(2, timeOutClosures: {
    
    print("第三次時間到")} )

print("=================\n")









func name(familyName:String,fullNameFunc:(secondName:String) -> String) {
    
    print("全名是:\(fullNameFunc(secondName: familyName))")
}

name("王", fullNameFunc: {(secName:String) -> String in
    
    return secName + "小明"
    
    })

name("林") { (secName:String) -> String in
    
    return secName + "小英"
}


//$0:取第一個參數, $1:取第二個參數...以此類推
name("小", fullNameFunc: {
    
    return $0 + "蘋果"
})

//省略 return
name("A", fullNameFunc: {$0 + "BC"})


















    




