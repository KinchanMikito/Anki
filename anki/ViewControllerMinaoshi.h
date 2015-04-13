//
//  ViewControllerMinaoshi.h
//  anki
//
//  Created by 金森幹斗 on 2015/02/27.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerMinaoshi : UIViewController{
    
    IBOutlet UILabel *labelA;
    IBOutlet UILabel *labelB;
    
    int randNum;
    
    BOOL usedNum[5000];
    
    IBOutlet UIButton *next;
    
    int openBoth;
    
}

-(IBAction)tapShowA:(id)sender;
-(IBAction)tapShowB:(id)sender;

-(IBAction)tapNext:(id)sender;

@end
