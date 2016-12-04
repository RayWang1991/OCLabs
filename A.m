/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: wangrui@bongmi.com
 *
 * A.m 
 * Created by ray wang on 16/12/3.
 */

#import "A.h"

@implementation A

- (void)setStr:(NSString *)s {
  [str release];
  str = s;
  [str retain];
}
- (NSString *)str {
  return str;
}
- (void)dealloc {
  [str autorelease];
  [self release];
  [super dealloc];

}


@end