/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: wangrui@bongmi.com
 *
 * Person.h 
 * Created by ray wang on 16/12/4.
 */

#import <Foundation/Foundation.h>

@interface Person : NSObject {
  NSString *firstName;
  NSString *lastName;
  NSString *fullName;
  NSMutableArray * arr;
}

- (void)setArr:(NSMutableArray *)newArr;
- (void)setFirstName:(NSString *)s;
- (void)setLastName:(NSString *)s;
- (NSString *)lastName;
- (NSString *)firstName;
- (NSString *)fullName;
-(void) dealloc;
- (NSMutableArray *)arr;
@end