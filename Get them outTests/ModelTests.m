//
//  ModelTests.m
//  Get them out
//
//  Created by Martin Bartusek on 23.03.13.
//  Copyright (c) 2013 Martin Bartusek. All rights reserved.
//

#import "ModelTests.h"
#import "Lens+addons.h"

#import "AppDelegate.h"

@interface AppDelegate ()
- (void)initCoreData;
@end


@implementation ModelTests

- (void)setUp
{
    model = [NSManagedObjectModel mergedModelFromBundles: nil];
    NSLog(@"model: %@", model);
    coord = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel: model];
    store = [coord addPersistentStoreWithType: NSInMemoryStoreType
                                configuration: nil
                                          URL: nil
                                      options: nil
                                        error: NULL];
    ctx = [[NSManagedObjectContext alloc] init];
    [ctx setPersistentStoreCoordinator: coord];
}

- (void)tearDown
{

    ctx = nil;
    NSError *error = nil;
    STAssertTrue([coord removePersistentStore: store error: &error],
                 @"couldn't remove persistent store: %@", error);
    store = nil;
    coord = nil;
    model = nil;
}

- (void)testThatEnvironmentWorks
{
    STAssertNotNil(store, @"no persistent store");
}


@end
