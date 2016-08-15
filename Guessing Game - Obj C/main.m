//
//  main.m
//  Guessing Game - Obj C
//
//  Created by Dan Esrey on 2016/15/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int randomNumber = arc4random_uniform(100);
    NSNumber *number = @(randomNumber);
    
    printf("Please enter your guess. Remember, your guess must be from zero to 99.\n\n");
    fpurge(stdin);
    int guess = -1;
    int error = 5;
    while (guess < 0 || guess > 99) {
        fpurge(stdin);
        error = scanf("%d", &guess);
        if (error != 1 || guess < 0 || guess > 99) {
            printf("You need to choose a number from 0 to 99.\n\n");
        }
    }
    if (guess == number) {
        NSString *message = @"Congratulations! You guessed the number!";
        NSLog(@"%@", message);
    } else {
        NSString *incorrectMessage = @"Ooh, sorry. Your guess is not correct.";
        NSLog(@"%@", incorrectMessage);
    }
    
    return 0;
}
