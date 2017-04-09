//
//  ViewController.m
//  SunD_category
//
//  Created by 孙哈蛤 on 2017/4/8.
//  Copyright © 2017年 孙哈蛤. All rights reserved.
//

#import "ViewController.h"
#import "NSArray+Helper.h"
#import "NSDictionary+Helper.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *sourceTF;
@property (weak, nonatomic) IBOutlet UITextField *resultTF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSArray *testArr = @[@"1", @"22", @"333", @"4444"];
    NSString *str = [testArr toJsonString];
    NSLog(@"666_SunDePrint_999:%@", str);
    
    
    NSDictionary *testDict = @{@"testArr" : testArr};
    NSString *str2 = [testDict toJsonString];
    NSLog(@"666_SunDePrint_999:%@", str2);
    
}



- (IBAction)resultBtn:(UIButton *)sender {
    
    
    
}




@end
