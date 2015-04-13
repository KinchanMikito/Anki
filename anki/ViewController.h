//
//  ViewController.h
//  anki
//
//  Created by 金森幹斗 on 2015/02/26.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *stringA[5000];
NSString *stringB[5000];

int stringCounter;//設定されているstringの数をカウントする変数

@interface ViewController : UIViewController{
    
    IBOutlet UITextField *textFieldA;
    IBOutlet UITextField *textFieldB;
    
    IBOutlet UILabel *label;
    
}

-(IBAction)tapSetMore:(id)sender;

@end

