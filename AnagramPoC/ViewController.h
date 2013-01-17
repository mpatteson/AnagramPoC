//
//  ViewController.h
//  AnagramPoC
//
//  Created by Mike Patteson on 17/01/2013.
//  Copyright (c) 2013 Lucky Gecko Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate> {
    
    IBOutlet    UILabel     *anagramLabel;
    IBOutlet    UILabel     *wordLabel;
    IBOutlet    UIButton    *shuffleButton;
    
    NSString    *theWord;
    NSString    *theAnagram;
    
}

-(IBAction)anagramIt;

@end
