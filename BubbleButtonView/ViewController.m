//
//  ViewController.m
//  BubbleButtonView
//
//  Created by Benjamin Gordon on 11/27/12.
//  Copyright (c) 2012 Benjamin Gordon. All rights reserved.
//
//  I made this just for fun, so please use the hell out of it.
//     -- bennyguitar
//


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Make sure you set bubbleView's delegate
    bubbleView.delegate = self;
    
    // A little UI Touch
    mainButton.layer.cornerRadius = 10;
}

#pragma mark - IBAction for DEMO

- (IBAction)addButtons:(id)sender
{
    [bubbleView removeBubbleButtonsWithInterval:0 animated:NO];
    
    NSArray *bubbleStringArray = @[@"Hello", @"this", @"is", @"a", @"test", @"of", @"the", @"BubbleButtonView", @"class"];
    NSArray *bubbleStringArray2 = @[@"Hello", @"this", @"is", @"a", @"test"];
    
    // Create colors for buttons
    UIColor *textColor = [UIColor blueColor];
    UIColor *bgColor = [UIColor yellowColor];
    
    KMHorizontalButtonsView *bubbleView2 = [[KMHorizontalButtonsView alloc] initWithFrame:bubbleConteiner.frame];
    [bubbleConteiner addSubview:bubbleView2];
    
    [bubbleView2 fillBubbleViewWithButtons:bubbleStringArray2
                 bgColor:bgColor
                 textColor:textColor
                 fontName:@"Courier-Bold"
                 fontSize:14
                 applyShadow:NO
                 animated:NO
                 resizeToFitSubviews:YES];
    
    [bubbleView2 resizeToFitSubviews];
    [bubbleView2 setNeedsLayout];
    [bubbleView2 setCenter:CGPointMake(CGRectGetMidX([bubbleConteiner bounds]), CGRectGetMidY([bubbleConteiner bounds]))];
    [bubbleView2 setBackgroundColor:[UIColor lightGrayColor]];

    // Now make them sucka's.
    [bubbleView fillBubbleViewWithButtons:bubbleStringArray
                                  bgColor:bgColor
                                textColor:textColor
                                 fontName:@"Courier-Bold"
                                 fontSize:14
                              applyShadow:YES
                                 animated:YES
                      resizeToFitSubviews:NO];
}


#pragma mark - BubbleButton Delegate

- (void)horizontalButtonsView:(KMHorizontalButtonsView *)horizontalButtonsView didClickBubbleButton:(UIButton *)button atIndex:(NSInteger)index
{
    NSLog(@"button tapped at index %zd",index);
}

@end
