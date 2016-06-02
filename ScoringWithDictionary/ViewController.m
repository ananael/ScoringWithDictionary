//
//  ViewController.m
//  ScoringWithDictionary
//
//  Created by Michael Hoffman on 6/1/16.
//  Copyright © 2016 Here We Go. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Scrabble tile values
    NSDictionary *dict = @{@"A":[NSNumber numberWithInt:1], @"B":[NSNumber numberWithInt:3], @"C":[NSNumber numberWithInt:3], @"D":[NSNumber numberWithInt:2], @"E":[NSNumber numberWithInt:1], @"F":[NSNumber numberWithInt:4], @"G":[NSNumber numberWithInt:2], @"H":[NSNumber numberWithInt:4], @"I":[NSNumber numberWithInt:1], @"J":[NSNumber numberWithInt:8], @"K":[NSNumber numberWithInt:5], @"L":[NSNumber numberWithInt:1], @"M":[NSNumber numberWithInt:3], @"N":[NSNumber numberWithInt:1], @"O":[NSNumber numberWithInt:1], @"P":[NSNumber numberWithInt:3], @"Q":[NSNumber numberWithInt:10], @"R":[NSNumber numberWithInt:1], @"S":[NSNumber numberWithInt:1], @"T":[NSNumber numberWithInt:1], @"U":[NSNumber numberWithInt:1], @"V":[NSNumber numberWithInt:4], @"W":[NSNumber numberWithInt:4], @"X":[NSNumber numberWithInt:8], @"Y":[NSNumber numberWithInt:4], @"Z":[NSNumber numberWithInt:10]};
    
    
    NSArray *wordArray = @[@"Q", @"U", @"I", @"E", @"T"];
    
    NSInteger wordSum = 0;
    NSNumber *value;
    NSMutableArray *values = [NSMutableArray new];
    
    //NSLog(@"%@", [dict allKeys]);
    
    for (NSInteger i=0; i<[wordArray count]; i++)
    {
        if ([wordArray objectAtIndex:i] !=nil)
        {
            value = [dict valueForKey:[wordArray objectAtIndex:i]];
            [values addObject:value];
        }
    }
    
    NSLog(@"VALUES: %@", values);
    
    for (NSNumber *num in values)
    {
        wordSum += [num integerValue];
    }
    
    NSLog(@"%ld", (long)wordSum);
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
















@end
