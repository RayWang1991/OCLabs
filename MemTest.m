/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: wangrui@bongmi.com
 *
 * MemTest.m 
 * Created by ray wang on 16/12/3.
 */

#import <Foundation/Foundation.h>

int mainT() {
NSAutoreleasePool *pool= [[NSAutoreleasePool alloc] init];

  id obj1 = [NSMutableArray array];
  id obj2 = obj1;
  NSLog(@"%p", obj1 );
 // [obj1 retain];
  NSLog(@"%d", [obj1 retainCount] );
  [obj1 release];
  [obj1 release];
 // NSLog(@"%p", obj1 );
  NSLog(@"%d", [obj1 retainCount]);
  [obj2 retain];
  NSLog(@"%d", [obj1 retainCount]);
  [pool drain];
  return 0;
}
