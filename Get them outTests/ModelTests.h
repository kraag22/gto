//
//  ModelTests.h
//  Get them out
//
//  Created by Martin Bartusek on 23.03.13.
//  Copyright (c) 2013 Martin Bartusek. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface ModelTests : SenTestCase {
    NSPersistentStoreCoordinator *coord;
    NSManagedObjectContext *ctx;
    NSManagedObjectModel *model;
    id store;
}

@end
