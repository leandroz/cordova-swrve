/********* CordovaSwrve.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "Swrve.h"

@interface CordovaSwrve : CDVPlugin {
// Member variables go here.
}

- (void)initialize:(CDVInvokedUrlCommand*)command;
@end

@implementation CordovaSwrve

+ (void)load
{
     NSLog(@"load");
    [[NSNotificationCenter defaultCenter] addObserver:self
                                          selector:@selector(didFinishLaunching:)
                                          name:UIApplicationDidFinishLaunchingNotification
                                          object:nil];

}


- (void)pluginInitialize;
{
    NSLog(@"pluginInitialize");
    [super pluginInitialize];
}

+ (void)didFinishLaunching:(NSNotification*)notification {
     NSLog(@"didFinishLaunching");
    //[Swrve sharedInstanceWithAppID:<app_id> apiKey:@"<api_key>"];
}

// CDV Plugin commands
- (void)initialize:(CDVInvokedUrlCommand*)command
{
    NSLog(@"initialize");
}

@end
