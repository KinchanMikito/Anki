//
//  ViewControllerMinaoshi.m
//  anki
//
//  Created by 金森幹斗 on 2015/02/27.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

#import "ViewControllerMinaoshi.h"
#import "ViewController.h"
#import "ViewControllerAnki.h"

@interface ViewControllerMinaoshi ()

@end

@implementation ViewControllerMinaoshi

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    for (int i = 0; i < 5000; i++) {
        
        usedNum[i] = NO;
        
    }
    
    randNum = arc4random() % checkStringNum;
    
    usedNum[randNum] = YES;
    
    labelA.text = @"A";
    labelB.text = @"B";
    
    next.hidden = YES;
    
    openBoth = 0;;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)tapShowA:(id)sender{
    
    labelA.text = stringA[randNum];
    
    openBoth ++;
    
    if (openBoth == 2) {
        
        next.hidden = NO;
        
        openBoth = 0;
        
    }
    
}

-(IBAction)tapShowB:(id)sender{
    
    labelB.text = stringB[randNum];
    
    openBoth ++;
    
    if (openBoth == 2) {
        
        next.hidden = NO;
        
        openBoth = 0;
        
    }
    
}

-(IBAction)tapNext:(id)sender{
    
    randNum = arc4random() % checkStringNum;
    
    while (usedNum[randNum] == YES) {
        
        randNum = arc4random() % checkStringNum;
        
    }
    
    if (usedNum[randNum] == NO) {
        
        usedNum[randNum] = YES;
        
        labelA.text = @"A";
        labelB.text = @"B";
        
        next.hidden = YES;
    }
    
}

-(IBAction)tapBack:(id)sender{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
