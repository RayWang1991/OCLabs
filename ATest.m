/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: wangrui@bongmi.com
 *
 * ATest.m
 * OCLabs
 *
 * Created by ray wang on 16/12/3.
 */

#import <Foundation/Foundation.h>
#import "A.h"
int main_A() {
  // A *a = [[A alloc] init];
  NSMutableString *temp,
      *myStr = [NSMutableString
      stringWithString:@"this is a test string!"];
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  // [a setStr:myStr];
  /* NSLog(@"retain count in A.str is %i",
         [a.str
             retainCount]);
   [myStr release];*/

  NSLog(@"retain count in myStr is %u", [myStr retainCount]);
  temp = [myStr retain];
  [temp retain];

  //[myStr autorelease];
  NSLog(@"retain count in myStr is %i", [myStr retainCount]);
  [pool drain];
  NSLog(@"retain count in myStr is %i", [temp retainCount]);
  return 0;
}
