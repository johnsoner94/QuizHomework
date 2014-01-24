//
//  QuizInClassViewController.h
//  Quiz
//
//  Created by Emily Johnson on 1/15/14.
//  Copyright (c) 2014 Emily Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizInClassViewController : UIViewController
{
    int currentQuestionIndex;
    
    // The model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    // The view objects - don't worry about IBOutlet - we'll talk about it shortly
}
- (IBAction)showQuestion:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *questionField;
- (IBAction)showAnswer:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *answerField;

@end
