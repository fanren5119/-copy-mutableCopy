//
//  ViewController.m
//  CopyTest
//
//  Created by 王磊 on 16/2/19.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "People.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self peopleCopy];
    
}

/**
 *  自定义对象的深浅复制
 */
- (void)peopleCopy
{
    People *people1 = [[People alloc] init];
    people1.name = @"小明";
    people1.age = 12;
    people1.friendName = @[@"aaa", @"bbb", @"cccc"];
    
    People *people2 = people1.copy;
//    People *people2 = people1.mutableCopy;
    
    NSLog(@"people1: %@", people1);
    NSLog(@"people2: %@", people2);
    
    NSLog(@"people1-name: %p", people1.name);
    NSLog(@"people2-name: %p", people2.name);
    
    NSLog(@"people1-friendName: %p", people1.friendName);
    NSLog(@"people2-friendName: %p", people2.friendName);
}

/**
 *  不可变的对象深浅复制
 */
- (void)stringCopy
{
    NSString *string = @"aaa";
    NSString *stringCopy = [string copy];
    NSMutableString *stringMutableCopy = [string mutableCopy];
    
    NSLog(@"string====%p", string);
    NSLog(@"stringCopy=====%p", stringCopy);
    NSLog(@"stringMutableCopy=====%p", stringMutableCopy);
    
    [stringMutableCopy appendString:@"bbb"];
}


/**
 *  可变对象的深浅复制
 */
- (void)mutableStringCopy
{
    NSMutableString *string = [NSMutableString stringWithString:@"aaa"];
    NSMutableString *stringCopy = [string copy];
    NSMutableString *stringMutableCopy = [string mutableCopy];
    
    NSLog(@"string====%p", string);
    NSLog(@"stringCopy=====%p", stringCopy);
    NSLog(@"stringMutableCopy=====%p", stringMutableCopy);
    
    [stringMutableCopy appendString:@"bbb"];
}


/**
 *  不可变集合的深浅复制
 */
- (void)arrayCopy
{
    NSArray *array = [NSArray arrayWithObjects:@"a", @"b", nil];
    NSArray *copyArray = [array copy];
    NSMutableArray *mutableCopy = [array mutableCopy];
    
    NSLog(@"array=====%p", array);
    NSLog(@"copyArray======%p", copyArray);
    NSLog(@"mutableCopy=====%p", mutableCopy);
    
    [mutableCopy addObject:@"c"];
}


/**
 *  可变集合的深浅复制
 */
- (void)arrayMutableCopy
{
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"a", @"b", nil];
    NSMutableArray *copyArray = [array copy];
    NSMutableArray *mutableCopy = [array mutableCopy];
    
    NSLog(@"array=====%p", array);
    NSLog(@"copyArray======%p", copyArray);
    NSLog(@"mutableCopy=====%p", mutableCopy);
    
    [mutableCopy addObject:@"c"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
