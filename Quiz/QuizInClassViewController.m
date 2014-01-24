//
//  QuizInClassViewController.m
//  Quiz
//
//  Created by Emily Johnson on 1/15/14.
//  Copyright (c) 2014 Emily Johnson. All rights reserved.
//

#import "QuizInClassViewController.h"

@interface QuizInClassViewController ()

@end

@implementation QuizInClassViewController
int counter=0;

-(void) viewDidLoad {

    // Create two arrays and make the pointers point to them
    questions = [[NSMutableArray alloc] init];
    answers = [[NSMutableArray alloc] init];
        
    // Add questions and answers to the arrays
        
    [questions addObject:@"What is 7 + 7?"];
    [answers addObject:@"14"];
        
    [questions addObject:@"What is the capital of Vermont?"];
    [answers addObject:@"Montpelier"];
        
    [questions addObject:@"From what is cognac made?"];
    [answers addObject:@"Grapes"];
}




- (IBAction)showQuestion:(id)sender
{
    
    
    if(currentQuestionIndex == ([questions count]-1))
    {
        //Go back to the first question
        currentQuestionIndex = 0;
    }
    else if(counter == 0)
    {
        currentQuestionIndex = rand() % 3;
        currentQuestionIndex--;
        counter++;
    }
    else
    {
        // Step to the next question
        currentQuestionIndex++;

    }
    
    
    // Am I past the last question?
//    if (currentQuestionIndex == [questions count])
//    {
//        
//        // Go back to the first question
//        currentQuestionIndex = 0;
//    }
    
    // Get the string at the index in the questions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    // Log the string to the console
    NSLog(@"displaying question: %@", question);
    
    // Display the string in the question field
    [self.questionField setText:question];
    
    // Clear the answer field
    [self.answerField setText:@"???"];
    
    
}

- (IBAction)showAnswer:(id)sender
{
    // What is the answer to the current question?
    NSString *answer =[answers objectAtIndex:currentQuestionIndex];
    
    // Display it in the answer field
    [self.answerField setText:answer];
    
}

@end
