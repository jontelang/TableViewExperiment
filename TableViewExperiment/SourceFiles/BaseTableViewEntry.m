//
//  BaseTableViewEntry.m
//  thailanguageapp
//
//  Created by Jonathan Winger-lang on 30/03/2016.
//  Copyright © 2016 jontelang productions. All rights reserved.
//

#import "BaseTableViewEntry.h"

@implementation BaseTableViewEntry

-(UINib*)nib{
    return [UINib nibWithNibName:NSStringFromClass(self.cellClass) bundle:nil];
}

-(NSString*)reuseIdentifier{
    return NSStringFromClass(self.cellClass);
}

+(BaseTableViewEntry*)entryWithClass:(Class)cellClass
                        cellSelector:(SEL)cellSelector
                            cellData:(id)cellData{
    BaseTableViewEntry *entry = [[BaseTableViewEntry alloc] init];
    entry.cellClass = cellClass;
    entry.cellData = cellData;
    entry.cellSelector = cellSelector;
    return entry;
}

@end
