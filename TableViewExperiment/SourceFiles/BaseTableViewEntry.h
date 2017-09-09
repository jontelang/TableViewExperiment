//
//  BaseTableViewEntry.h
//  thailanguageapp
//
//  Created by Jonathan Winger-lang on 30/03/2016.
//  Copyright © 2016 jontelang productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BaseTableViewEntry : NSObject

@property Class cellClass;
@property SEL cellSelector;
@property id cellData;

-(UINib*)nib;
-(NSString*)reuseIdentifier;

+(BaseTableViewEntry*)entryWithClass:(Class)cellClass
                        cellSelector:(SEL)cellSelector
                            cellData:(id)cellData;

@end
