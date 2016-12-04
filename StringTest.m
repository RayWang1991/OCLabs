/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: wangrui@bongmi.com
 *
 * StringTest.m
 * OCLabs
 *
 * Created by ray wang on 16/12/3.
 */

#import <Foundation/Foundation.h>
int main_String() {
  NSString *consStr1 = @"cons string";
  NSString
      *consStr2 = @"cons1234 string";
  NSString *consStr3 = @"cons string";
  NSMutableString *mutableString =
      [NSMutableString stringWithString:@"iadf"];
  NSLog(@"the retain count of str1 is %lx \n the address of the string is %p",
        [consStr1 retainCount],
        (void *) consStr1);
  NSLog(@"the retain count of str2 is %lx \n the address of the string is %p",
        [consStr2 retainCount],
        consStr2);
  NSLog(@"the retain count of str3 is %lx \n the address of the string is %p",
        [consStr3 retainCount],
        consStr3);
  NSLog(@"the retain count of mutstr is %lx",
        [mutableString retainCount]);

  return 0;
}
