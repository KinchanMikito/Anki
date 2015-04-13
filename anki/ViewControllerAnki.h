//
//  ViewControllerAnki.h
//  anki
//
//  Created by 金森幹斗 on 2015/02/26.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *checkStringA[5000];//後で見直すやつ
NSString *checkStringB[5000];

int checkStringNum;

@interface ViewControllerAnki : UIViewController{
    
    IBOutlet UILabel *labelA;
    IBOutlet UILabel *labelB;
    
    int randNum;
    
    BOOL usedNum[5000];
    
    IBOutlet UIButton *next;
    
    IBOutlet UIButton *bookMark;
    
    int openBoth;
    
    int kaisu;
    
}

-(IBAction)tapShowA:(id)sender;
-(IBAction)tapShowB:(id)sender;

-(IBAction)tapNext:(id)sender;

-(IBAction)tapBookMark:(id)sender;

-(IBAction)tapBack:(id)sender;

@end
