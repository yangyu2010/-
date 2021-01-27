//
//  AppDelegate.m
//  algorithm
//
//  Created by Yu Yang on 2021/1/27.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//
//    NSMutableArray *arr = [self getArrayWithCount:10 max:20 min:10];
//    NSLog(@"%@", arr);
//    [self bubbleSort1:arr];
//    NSLog(@"%@", arr);

    
//    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:10];
//    for (int i = 0; i < 10; i++) {
//        [arr addObject:[NSNumber numberWithInt:i]];
//    }
//    NSMutableArray *arr = [self getArrayWithCount:10 max:20 min:10];
//    NSLog(@"%@", arr);
//    [self bubbleSort2:arr];
//    NSLog(@"%@", arr);
    
    
//    NSMutableArray *arr = [self getArrayWithCount:10 max:20 min:10];
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@17, @11, @17, @20, @10, @13, @20, @17, @16, @18, nil];
    NSLog(@"%@", arr);
    [self bubbleSort3:arr];
    NSLog(@"%@", arr);

    return YES;
}

//int value = (arc4random() % x) + 1;

- (NSMutableArray *)getArrayWithCount:(NSInteger)count max:(NSInteger)max min:(NSInteger)min {
    NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity:count];
    for (int i = 0; i < count; i++) {
        long value = (arc4random() % (max - min + 1)) + min;
        [arr addObject:[NSNumber numberWithLong:value]];
    }
    return arr;
}

- (void)bubbleSort1:(NSMutableArray *)arr {
    
    for (NSInteger end = arr.count - 1; end > 0; end--) {
        for (NSInteger begin = 0; begin < end; begin++) {
            if ([arr[begin] integerValue] > [arr[begin+1] integerValue]) {
                NSObject *temp = arr[begin];
                arr[begin] = arr[begin + 1];
                arr[begin + 1] = temp;
            }
        }
    }
}


- (void)bubbleSort2:(NSMutableArray *)arr {
    
    for (NSInteger end = arr.count - 1; end > 0; end--) {
        NSLog(@"%ld", (long)end);
        
        BOOL sorted = YES;
        for (NSInteger begin = 0; begin < end; begin++) {
            if ([arr[begin] integerValue] > [arr[begin+1] integerValue]) {
                NSObject *temp = arr[begin];
                arr[begin] = arr[begin + 1];
                arr[begin + 1] = temp;
                
                sorted = NO;
            }
        }
        
        if (sorted) {
            NSLog(@"跳出 %ld", (long)end);
            break;
        }
    }
}



- (void)bubbleSort3:(NSMutableArray *)arr {
    
    for (NSInteger end = arr.count - 1; end > 0; end--) {
        NSLog(@"%ld", (long)end);
        
        NSInteger sortedIndex = 0;
        for (NSInteger begin = 0; begin < end; begin++) {
            if ([arr[begin] integerValue] > [arr[begin+1] integerValue]) {
                NSObject *temp = arr[begin];
                arr[begin] = arr[begin + 1];
                arr[begin + 1] = temp;
                
                sortedIndex = end;
            }
        }
        
        end = sortedIndex;
    }
}


@end
