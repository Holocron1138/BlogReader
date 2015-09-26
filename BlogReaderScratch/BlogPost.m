//
//  BlogPost.m
//  BlogReaderScratch
//
//  Created by James Rowe on 2015-08-26.
//  Copyright (c) 2015 James Rowe. All rights reserved.
//

#import "BlogPost.h"

@implementation BlogPost

- (id) initWithTitle:(NSString *)title;{
    self = [super init];
    
    if (self) {
        self.title = title;
        self.author = nil; //if no author we wont get an error
        self.thumbnail = nil; //if no image we wont get an error
    }
    
    return self;
}

+ (id) blogPostWithTitle:(NSString *)title {
    return [[self alloc] initWithTitle:title];
}

//implimentation for thumbnailURL method
- (NSURL *) thumbnailURL {
    return [NSURL URLWithString:self.thumbnail];
}

//implimentaton for formattedDate method
- (NSString *) formattedDate {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *tempDate = [dateFormatter dateFromString:self.date];
    
    [dateFormatter setDateFormat:@"EE MMM,dd"];
    return [dateFormatter stringFromDate:tempDate];
}

@end
