//
//  ViewController.m
//  Quiz
//
//  Created by Ewa Czekalska on 07/08/2016.
//  Copyright © 2016 Ewa Czekalska. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

@end

@implementation ViewController

/* We need a method that is called on your controller object after its views have been laid out for the first time, and use it to initialize your arrays.
*/
- (void)viewDidLoad {
    [super viewDidLoad];
    //create two arrays filled witth questions and answers and make the pointers point to them
    self.questions = @[ @"What is your name?",
                        @"What is your quest?",
                        @"What is your favorite color?" ];
    self.answers = @[ @"Sir Galahad of Camelot",
                      @"I seek the Grail",
                      @"Blue. No, yel-" ];
    self.questionLabel.text = self.questions[self.currentQuestionIndex];
}
- (IBAction)showQuestion:(id)sender {
    self.currentQuestionIndex++;
    if (self.currentQuestionIndex == self.questions.count) {
        self.currentQuestionIndex = 0;
    }
    NSString *question = self.questions[self.currentQuestionIndex];
    self.questionLabel.text = question;
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender {
    
    NSString *answer = self.answers[self.currentQuestionIndex];
    self.answerLabel.text = answer;
}


@end
