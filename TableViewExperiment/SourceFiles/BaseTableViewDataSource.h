//
//  BaseTableViewDataSource.h
//  thailanguageapp
//
//  Created by Jonathan Winger-lang on 30/03/2016.
//  Copyright © 2016 jontelang productions. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BaseTableViewSection;
@class BaseTableViewEntry;

@interface BaseTableViewDataSource : NSObject {
    NSArray *sections;
}

-(void)addSection:(BaseTableViewSection*)section;
-(BaseTableViewEntry*)entryAtIndexPath:(NSIndexPath*)indexPath;
-(NSInteger)numberOfRowsInSection:(NSInteger)section;
-(NSInteger)numberOfSections;
-(NSString*)titleForSection:(NSInteger)section;

@end
