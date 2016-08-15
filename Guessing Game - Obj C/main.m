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
    NSLog(@"\n\nThe number is %@.\n\n", number);
    // remember to delete line 15
    
    printf("\n\nPlease enter your guess. Remember, your guess must be from zero to 99.\n\n");
    fpurge(stdin);
    int guess = -1;
    int error = 5;
    while (guess < 0 || guess > 99) {
        fpurge(stdin);
        error = scanf("%d", &guess);
        if (error != 1 || guess < 0 || guess > 99) {
            printf("\n\nYou need to choose a number from 0 to 99.\n\n");
        }
    }
    if (guess == [number intValue]) {
        NSNumber *number = @(randomNumber);
        NSLog(@"\n\nCongratulations! You correctly guessed the computer's number was %@!\n\n", number);
        return 0;
    } else {
        NSString *incorrectMessage = @"\n\nOoh, sorry. Your guess is not correct.\nWould you like to make another guess? (1=Y/2=N)\n\n";
        NSLog(@"%@", incorrectMessage);
        int keepPlaying = 9;
        fpurge(stdin);
        while (keepPlaying < 1 || keepPlaying >= 3) {
            error = scanf("%d", &keepPlaying);
            if (error != 1 || keepPlaying < 1 || keepPlaying >= 3 ) {
                printf("Please enter 1 or 2: \n\n");
            }
        }
        return keepPlaying;
    }
    return 0;
}
