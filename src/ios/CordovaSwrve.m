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


// CDV Plugin commands
- (void)initialize:(CDVInvokedUrlCommand*)command
{
    NSLog(@"initialize");
    int appId = [[command.arguments objectAtIndex:0] intValue];
    NSString* apiKey = [command.arguments objectAtIndex:1];
    [Swrve sharedInstanceWithAppID:appId apiKey:apiKey];
}

- (void)sendEventWithPayload:(CDVInvokedUrlCommand*)command
{
    NSString* eventName = [command.arguments objectAtIndex:0];
    NSDictionary* eventPayload = nil;

    int result;

    if([command.arguments objectAtIndex:1] != [NSNull null]){
        eventPayload = [command.arguments objectAtIndex:1];
        result = [[Swrve sharedInstance] event:eventName payload:eventPayload];
    } else {
        result = [[Swrve sharedInstance] event:eventName];
    }
    
    NSLog(@"Result: %d", result);

}

@end

/*
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
}


*/
