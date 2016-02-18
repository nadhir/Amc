//
//  image-color.m
//  ClonePikicast
//
//  Created by User on 2015-08-08.
//  Copyright (c) 2015 IdeaLump. All rights reserved.
//

#import "image-color.h"


@implementation UIImage (JTColor)

+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0, 0, 1, 1);
    // Create a 1 by 1 pixel context
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [color setFill];
    UIRectFill(rect);   // Fill it with your color
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end