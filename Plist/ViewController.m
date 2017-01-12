//
//  ViewController.m
//  Plist
//
//  Created by Prahlad on 1/10/17.
//  Copyright © 2017 Prahlad. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.text = @"Click the button below for random joke";
    
}

- (IBAction)buttonClicked:(id)sender {
    
    
    NSString *myString = [[NSBundle mainBundle] pathForResource:@"random" ofType:@"plist"];
    
    NSDictionary *mydict = [[NSDictionary alloc] initWithContentsOfFile:myString];
    
    NSMutableArray*myarray = [mydict valueForKey:@"Joke"];
    
    int myint = arc4random() % [myarray count];
    
    NSString *secondstring = [myarray objectAtIndex:myint];
    
    self.label.text = [NSString stringWithFormat:@"%@",secondstring];
    
    NSLog(@"Random joke is %@", secondstring);
}
@end
