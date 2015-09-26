//
//  WebViewController.h
//  BlogReaderScratch
//
//  Created by James Rowe on 2015-08-28.
//  Copyright (c) 2015 James Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
@property (strong, nonatomic) NSURL *blogPostURL;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end
