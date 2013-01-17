//
//  ViewController.m
//  AnagramPoC
//
//  Created by Mike Patteson on 17/01/2013.
//  Copyright (c) 2013 Lucky Gecko Apps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)anagramIt {
    
    theAnagram = [self shuffleLetters:theWord];
    
    if ([theAnagram isEqualToString:theWord]) [self anagramIt];
    
    anagramLabel.text = theAnagram;
    
}

-(NSString *)shuffleLetters: (NSString *) word {
    
    NSMutableString *shuffledWord = [NSMutableString stringWithString:word];
    
    NSString *buffer;
    for (NSInteger i = shuffledWord.length - 1, j; i >= 0; i--)
    {
        j = arc4random() % (i + 1);
        
        buffer = [shuffledWord substringWithRange:NSMakeRange(i, 1)];
        [shuffledWord replaceCharactersInRange:NSMakeRange(i, 1) withString:[shuffledWord substringWithRange:NSMakeRange(j, 1)]];
        [shuffledWord replaceCharactersInRange:NSMakeRange(j, 1) withString:buffer];
    }
    
    return shuffledWord;
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    theWord = textField.text;
    [self updateWordLabel];
    [textField resignFirstResponder];
    
    return YES;
    
}

-(void)updateWordLabel {
    
    wordLabel.text = theWord;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    theWord = @"CARP";
    [self updateWordLabel];
    anagramLabel.text = NULL;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
