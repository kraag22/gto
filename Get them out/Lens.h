//
//  Lens.h
//  Get them out
//
//  Created by Martin Bartusek on 23.03.13.
//  Copyright (c) 2013 Martin Bartusek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class LensRemovedDays;

@interface Lens : NSManagedObject

@property (nonatomic, retain) NSNumber * maxUsageDays;
@property (nonatomic, retain) NSDate * startUsingAt;
@property (nonatomic, retain) NSNumber * nightUsage;
@property (nonatomic, retain) NSNumber * removeOnXDays;
@property (nonatomic, retain) NSSet *removeOnDays;
@end

@interface Lens (CoreDataGeneratedAccessors)

- (void)addRemoveOnDaysObject:(LensRemovedDays *)value;
- (void)removeRemoveOnDaysObject:(LensRemovedDays *)value;
- (void)addRemoveOnDays:(NSSet *)values;
- (void)removeRemoveOnDays:(NSSet *)values;

@end
