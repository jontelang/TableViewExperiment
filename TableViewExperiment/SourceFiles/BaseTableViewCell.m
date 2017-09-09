//
//  BaseTableViewCell.m
//  thailanguageapp
//
//  Created by Jonathan Winger-lang on 31/03/2016.
//  Copyright © 2016 jontelang productions. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

-(void)setData:(id)data{
    // Must be string, this is basic cell
    cellLabelTitle.text = data;
}

-(void)setSelected:(BOOL)selected animated:(BOOL)animated{
    // Makes it non selected
}

-(void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    self.backgroundColor = highlighted ? [UIColor lightGrayColor] : [UIColor groupTableViewBackgroundColor];
}

@end
