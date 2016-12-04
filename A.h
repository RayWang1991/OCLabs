/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: wangrui@bongmi.com
 *
 * A.h 
 * Created by ray wang on 16/12/3.
 */

#import <Foundation/Foundation.h>

@interface A : NSObject {
  NSString *str;
}
- (void)setStr:(NSString *)s;
- (NSString *)str;
- (void) dealloc;
@end