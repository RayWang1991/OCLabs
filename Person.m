/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: wangrui@bongmi.com
 *
 * Person.m
 * Created by ray wang on 16/12/4.
 */

#import "Person.h"

typedef NSMutableArray *array;
@implementation Person {
}
- (void)setArr:(NSMutableArray *)newArr {
  [newArr retain];
  [arr release];
  //NSLog(@"the arr's retainCount is %lu" , [arr retainCount]);
  arr = newArr;
}
- (void)setFirstName:(NSString *)s {
  [firstName release];
  firstName = [s retain];
}
- (void)setLastName:(NSString *)s {
  [lastName release];
  lastName = [s retain];
}
- (NSString *)lastName {
  return lastName;
}
- (NSString *)firstName {
  return firstName;
}
- (NSString *)fullName {
  fullName =
      [NSString stringWithFormat:@"%@.%@",
                                 self.firstName,
                                 self.lastName];
  return fullName;
}
- (void)dealloc {
  [firstName release];
  [lastName release];
  [arr release];
  [super dealloc];
}

- (NSMutableArray *)arr {
  return arr;
}
@end

int main() {
  Person *myPerson = [[Person alloc] init];
  [myPerson setFirstName:@"ray"];
  NSLog(@"the retain count in fist name is %ul", [myPerson.firstName
      retainCount]);
  [myPerson setLastName:@"wang"];
  array mutArr = [NSMutableArray arrayWithArray:
      @[@1, @"two"]];
  [myPerson setArr:mutArr];
  [mutArr release];
  NSLog(@"%lu", [mutArr retainCount]);
  NSMutableArray *temp = myPerson.arr;
  [myPerson setArr:temp];
  NSLog(@"%lu", [mutArr retainCount]);
}
