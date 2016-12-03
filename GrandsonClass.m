/**
 * Copyright (c) 2016, Bongmi
 * All rights reserved
 * Author: wangrui@bongmi.com
 *
 * GrandsonClass.m 
 * Created by ray wang on 16/12/3.
 */

#import <objc/runtime.h>
#import "GrandsonClass.h"

@implementation GrandsonClass {

}
- (void)showSize {
NSLog(@"grandson class has the %i bytes", class_getInstanceSize([GrandsonClass class]));
}

@end