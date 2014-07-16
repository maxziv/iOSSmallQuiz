//
//  QuizViewController.m
//  Small Quiz
//
//  Created by Maxwell Zhou on 7/14/14.
//  Copyright (c) 2014 LinkedIn. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;

@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;

@property (nonatomic, copy) NSArray *answers; //why copy?

@end

@implementation QuizViewController


- (IBAction) showQuestion:(id)sender
{
    
    NSLog(@"%d", self.currentQuestionIndex);
    NSString *currentQuestion = self.questions[self.currentQuestionIndex];
    self.questionLabel.text = currentQuestion;
    
    self.answerLabel.text = @"???";
    
    //[self setCurrentQuestionIndex:1];
    
    self.currentQuestionIndex = (self.currentQuestionIndex + 1) % self.questions.count;
    
    
}


- (IBAction) showAnswer:(id)sender
{
    NSString *currentAnswer = self.answers[(self.currentQuestionIndex + self.questions.count - 1)% self.questions.count];
    self.answerLabel.text = currentAnswer;
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _questions = @[@"question 1",@"question 2",@"question 3"]; //underscore
        _answers = @[@"anwswer 1",@"answer 2",@"answer 3"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
