//
//  metaClassTest.m
//  OCLabs
//
//  Created by ray wang on 16/11/28.
//  Copyright © 2016年 ray wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSError.h>
#import <objc/runtime.h>
#import <objc/objc-api.h>
void ReportFunction(id self,SEL _cmd)
{
    NSLog(@"This object is %p." , self);
    NSLog(@"Class is %@, and super is  %@." , [self class], [self superclass]);
    Class currentClass = [ self class];
    for( int i = 1; i<5;i++)
    {
        NSLog(@"Following the isa pointer %d time  gives %p", i , currentClass);
        currentClass = object_getClass(currentClass);
    }
    NSLog(@"NSObject's class is %p", [NSObject class]);
    NSLog(@"NSObject's meta class is %p", object_getClass([NSObject class]));
}
int main_Meta()
{
    // create a subClass of NSError
    Class newClass = objc_allocateClassPair([NSError class],"RuntimeErrorSubClass",0);
    // add a method to the newClass
    class_addMethod(newClass, @selector(report),(IMP)ReportFunction,"v@:");
    //register ClassPair
    objc_registerClassPair(newClass);
    id myInstace = [[newClass alloc] initWithDomain:@"some Domain" code:0 userInfo:nil];
    [myInstace performSelector:@selector(report)];
    [myInstace release];
    return 0;
}

