//
//  People.h
//  CopyTest
//
//  Created by 王磊 on 16/3/30.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject <NSCopying, NSMutableCopying>

@property (nonatomic, strong) NSString  *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, strong) NSArray   *friendName;

@end
