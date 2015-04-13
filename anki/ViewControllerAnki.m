//
//  ViewControllerAnki.m
//  anki
//
//  Created by 金森幹斗 on 2015/02/26.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

#import "ViewControllerAnki.h"
#import "ViewController.h"
#import "ViewControllerMinaoshi.h"

@interface ViewControllerAnki ()

@end

@implementation ViewControllerAnki

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    for (int i = 0; i < 5000; i++) {
        
        usedNum[i] = NO;
        
    }
    
    randNum = arc4random() % stringCounter;
    
    usedNum[randNum] = YES;
    
    labelA.text = @"A";
    labelB.text = @"B";
    
    next.hidden = YES;
    bookMark.hidden = YES;
    
    openBoth = 0;
    
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
        bookMark.hidden = NO;
        
        openBoth = 0;

    }
    
}

-(IBAction)tapShowB:(id)sender{
    
    labelB.text = stringB[randNum];
    
    openBoth ++;
    
    if (openBoth == 2) {
        
        next.hidden = NO;
        bookMark.hidden = NO;
        
        openBoth = 0;
        
    }
    
}

-(IBAction)tapNext:(id)sender{
    
    randNum = arc4random() % stringCounter;
    
    while (usedNum[randNum] == YES) {
        
        randNum = arc4random() % stringCounter;

    }
    
    if (usedNum[randNum] == NO) {
        
        usedNum[randNum] = YES;
        
        labelA.text = @"A";
        labelB.text = @"B";
        
        next.hidden = YES;
        bookMark.hidden = YES;
        
        kaisu++;
        
    }
    
    
    
}

-(IBAction)tapBookMark:(id)sender{
    
    checkStringA[checkStringNum] = stringA[randNum];
    checkStringB[checkStringNum] = stringB[randNum];
    
    checkStringNum ++;

    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"完了"
                                                   message:@"チェックリストに登録しました"
                                                  delegate:nil
                                         cancelButtonTitle:nil
                                         otherButtonTitles:@"OK", nil
                          ];
    [alert show];
    

    bookMark.hidden = YES;
    
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
