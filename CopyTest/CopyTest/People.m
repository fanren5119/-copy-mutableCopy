//
//  People.m
//  CopyTest
//
//  Created by 王磊 on 16/3/30.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "People.h"

@implementation People

- (id)copyWithZone:(NSZone *)zone
{
    People *people = [[self class] allocWithZone:zone];
    people->_name = self.name.copy;
    people->_age = self.age;
    people->_friendName = self.friendName.copy;
    
    return people;
}

- (id)mutableCopyWithZone:(NSZone *)zone
{
    People *people = [[self class] allocWithZone:zone];
    people->_name = self.name.mutableCopy;
    people->_age = self.age;
    people->_friendName = self.friendName.mutableCopy;
    
    return people;
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"%p, name:%@, age:%ld, friendName:%@", self, self.name, (long)self.age, self.friendName];
}

@end
