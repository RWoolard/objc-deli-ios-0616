//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

/*
 
 *  Define your methods here!
 
 */
- (void) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    NSLog(@"%@", deliLine);
    
}

- (NSString *) stringWithDeliLine:(NSArray *)deliLine {
    
    NSString *lineList = @"The line is:";
    NSUInteger numberOfCustomers = [deliLine count];
    
    if (numberOfCustomers  == 0 ){
        return (@"The line is currently empty.");
    } else {
        for (NSUInteger i = 0; i < numberOfCustomers; i++) {
        lineList = [lineList stringByAppendingFormat:@"\n%li. %@", i +1, deliLine[i]];
        // NSLog(@"%@", lineList);
        }
    
    }
    return lineList;
}

- (NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {

    NSString *nextGuestInLine = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return nextGuestInLine;
    
    
    }
@end