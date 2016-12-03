
#ifndef SuperClass_h
#define SuperClass_h


#endif /* SuperClass_h */
#import <Foundation/Foundation.h>

@interface SuperClass : NSObject
{
/*@protected
    int protectedVar;
    char protectedChar;
*/
@private
    long long privateVar1,privateVar2;
    
}
-(void) instanceMethod1;
+(void) classMethod1;
//-(SuperClass *) init;
@end
