//
//  ImageCell.m
//  TableViewExperiment
//
//  Created by Jonathan Winger-lang on 9/09/2017.
//  Copyright © 2017 Jontelang. All rights reserved.
//

#import "ImageCell.h"

@implementation ImageCell

-(void)setData:(NSString*)imageName{
    contentImageView.image = [UIImage imageNamed:imageName];
}

@end
