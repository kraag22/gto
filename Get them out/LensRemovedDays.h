//
//  LensRemovedDays.h
//  Get them out
//
//  Created by Martin Bartusek on 23.03.13.
//  Copyright (c) 2013 Martin Bartusek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Lens;

@interface LensRemovedDays : NSManagedObject

@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) Lens *lens;

@end
