//
//  ViewController.m
//  CodeStudy
//
//  Created by ningxia on 15/5/26.
//  Copyright (c) 2015年 ningxia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    NSMutableArray *array = @[@1, @12, @2, @4, @51, @66, @45, @25, @96, @78, @55, @23];
    NSMutableArray *array = [NSMutableArray arrayWithArray:@[@13, @12, @2, @4, @51, @66, @45, @25, @96, @78, @55, @23]];
    [self bubbleSort:array];
}

// 冒泡排序
- (void)bubbleSort:(NSMutableArray *)array {
    int num = 0; //循环次数
    
    // 升序
    for (NSUInteger i = 1; i < array.count; i++) {
        for (NSUInteger j = array.count - 1; j >= i; j--) {
            if (array[j] < array[j - 1]) {
                id m = array[j - 1];
                array[j - 1] = array[j];
                array[j] = m;
//                [array exchangeObjectAtIndex:j withObjectAtIndex:i];
                num++; //48次
            }
        }
    }
    
    // 升序
//    int i, y;
//    BOOL bFinish = YES;
//    for (i = 1; i <= [array count] && bFinish; i++) {
//        bFinish = NO;
//        for (y = (int)[array count] - 1; y >= i; y--) {
//            if ([[array objectAtIndex:y] intValue] < [[array objectAtIndex:y-1] intValue]) { [array exchangeObjectAtIndex:y-1 withObjectAtIndex:y];
//                bFinish = YES;
//                num++; //18次
//            }
//        }
//    }
    
    NSLog(@"num:%d", num);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
