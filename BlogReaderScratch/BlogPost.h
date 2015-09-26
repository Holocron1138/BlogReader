//
//  BlogPost.h
//  BlogReaderScratch
//
//  Created by James Rowe on 2015-08-26.
//  Copyright (c) 2015 James Rowe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *thumbnail;
@property (nonatomic, strong) NSString *date;
@property (nonatomic, strong) NSURL *url;

//Designated Initializer
- (id) initWithTitle:(NSString *)title;
+ (id) blogPostWithTitle:(NSString *)title;

//Creating a method that will return an NSURL
- (NSURL *) thumbnailURL;
//formatting date method
- (NSString *) formattedDate;

@end
