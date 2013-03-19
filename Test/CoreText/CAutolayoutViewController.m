//
//  CAutolayoutViewController.m
//  CoreText
//
//  Created by Jonathan Wight on 12/21/12.
//  Copyright (c) 2012 toxicsoftware.com. All rights reserved.
//

#import "CAutolayoutViewController.h"

#import "CCoreTextLabel.h"

@interface CAutolayoutViewController ()
@property (readwrite, nonatomic, strong) IBOutlet CCoreTextLabel *label;
@end

@implementation CAutolayoutViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSString *theString = @"Hello world\nHello world";
    NSMutableParagraphStyle *theParagraphStyle = [[NSMutableParagraphStyle alloc] init];
    theParagraphStyle.alignment = NSTextAlignmentRight;
    NSMutableAttributedString *theAttributedString = [[NSMutableAttributedString alloc] initWithString:theString attributes:@{ NSParagraphStyleAttributeName: theParagraphStyle }];
	self.label.attributedText = theAttributedString;
}


@end
