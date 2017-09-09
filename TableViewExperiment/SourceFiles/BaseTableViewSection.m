//
//  BaseTableViewSection.m
//  thailanguageapp
//
//  Created by Jonathan Winger-lang on 30/03/2016.
//  Copyright © 2016 jontelang productions. All rights reserved.
//

#import "BaseTableViewSection.h"
#import "BaseTableViewEntry.h"

@implementation BaseTableViewSection

-(id)initWithTitle:(NSString*)title{
    if( self = [super init] ){
        _title = title;
    }
    return self;
}

-(void)addEntry:(BaseTableViewEntry *)entry{
    if( entries == nil ){
        entries = @[];
    }
    entries = [entries arrayByAddingObject:entry];
}

-(BaseTableViewEntry*)entryAtIndex:(NSInteger)index{
    return [entries objectAtIndex:index];
}

-(NSInteger)entryCount{
    return [entries count];
}

@end
