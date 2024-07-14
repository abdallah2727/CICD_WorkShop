//
//  main.m
//  CICD_WorkShop
//
//  Created by Abdallah ismail on 10/07/2024.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#if NBE
#import "NBE-Swift.h"
#elif CA
#import "CA-Swift.h"
#else
//#import "CA-Swift.h"
#endif


int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        NSString *delegateClass;
#if CA
        delegateClass = NSStringFromClass([CAAppDelegate class]);
#elif NBE
        delegateClass = NSStringFromClass([NBEAppDelegate class]);
//#else
//        delegateClass = NSStringFromClass([AppDelegate class]);
#endif

        int retVal = -1;
        @try {
            retVal = UIApplicationMain(argc, argv, nil,delegateClass);
        }
        @catch (NSException* exception) {
        #if DEBUG
            NSLog(@"Uncaught exception: %@", exception.description);
            NSLog(@"Stack trace: %@", [exception callStackSymbols]);
        #endif
        }
        
        return retVal;
    }
}
