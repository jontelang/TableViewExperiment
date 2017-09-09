//
//  BaseTableView.m
//  thailanguageapp
//
//  Created by Jonathan Winger-lang on 2/04/2016.
//  Copyright © 2016 jontelang productions. All rights reserved.
//

#import "BaseTableView.h"

@implementation BaseTableView

-(void)awakeFromNib{
    [super awakeFromNib];
    
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.backgroundColor = [UIColor clearColor];
    
    // iOS8+ magic
    self.estimatedRowHeight = 50;
    self.rowHeight = UITableViewAutomaticDimension;
    
    // Visual
    self.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
}

@end
