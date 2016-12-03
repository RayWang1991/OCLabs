//
//  StructTest.m
//  OCLabs
//
//  Created by ray wang on 16/11/28.
//  Copyright © 2016年 ray wang. All rights reserved.
//
#import <Stdio.h>
#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "SuperClass.h"
#import "SubClass.h"
#import "GrandsonClass.h"
int maini_Strct(int argc, const char *argv[]) {
  @autoreleasepool {
    SuperClass *superO = [[SuperClass alloc] init];
    SubClass *subO = [[SubClass alloc] init];
    GrandsonClass *grand0 = [[GrandsonClass alloc] init];
    NSLog(@" the size of int is : %d", sizeof(int));
    NSLog(@" the size of a pointer is : %d", sizeof(void *));
    NSLog(@" the size of SuperClass object is : %d",
          class_getInstanceSize([SuperClass class]));
    NSLog(@" the size of SubClass object is : %d",
          class_getInstanceSize([SubClass class]));
    NSLog(@" the size of SuperClass class-object is : %d",
          class_getInstanceSize([SuperClass class]));
    NSLog(@" the size of SubClass class-object is : %d",
          class_getInstanceSize([SubClass class]));
    NSLog(@" the size of GrandSonClass class-object is : %d",
          class_getInstanceSize([GrandsonClass class]));
  }
  return 0;
}
