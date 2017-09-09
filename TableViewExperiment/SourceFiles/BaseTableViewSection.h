//
//  BaseTableViewSection.h
//  thailanguageapp
//
//  Created by Jonathan Winger-lang on 30/03/2016.
//  Copyright © 2016 jontelang productions. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BaseTableViewEntry;

@interface BaseTableViewSection : NSObject {
    NSArray *entries;
}

@property (readonly) NSString* title;

-(id)initWithTitle:(NSString*)title;
-(void)addEntry:(BaseTableViewEntry*)entry;
-(BaseTableViewEntry*)entryAtIndex:(NSInteger)index;
-(NSInteger)entryCount;

@end
