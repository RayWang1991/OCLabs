
#import <Foundation/Foundation.h>
#import "SuperClass.h"
@implementation SuperClass
/*-(SuperClass *) init{
    self = [super init];

    return self;
}
*/
-(void) instanceMethod1{
    NSLog(@"instance method 1!");
}
+(void) classMethod1{
    NSLog(@"class method 1!");
}
@end
