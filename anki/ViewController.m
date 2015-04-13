//
//  ViewController.m
//  anki
//
//  Created by 金森幹斗 on 2015/02/26.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerAnki.h"
#import "ViewControllerMinaoshi.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //stringCounter = 0;
    
    textFieldA.delegate = self;
    textFieldB.delegate = self;
    
    label.text = nil;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
    
}

-(IBAction)tapSetMore:(id)sender{
    
    if ([textFieldA.text  isEqual: @""] || [textFieldB.text  isEqual: @""]) {
    
        label.text = @"両方入力してください";
        
    }else{
        
        stringA[stringCounter] = textFieldA.text;
        stringB[stringCounter] = textFieldB.text;
        
        textFieldA.text = nil;
        textFieldB.text = nil;
        
        stringCounter++;
        
        label.text = nil;

    }
    
}

@end
