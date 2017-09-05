//
//  main.m
//  WordsEffects
//
//  Created by Jaison Bhatti on 2017-09-04.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>

void displayMenu() {
    printf ("Enter a number below: \n");
    printf ("1. UPPERCASE \n");
    printf ("2. Lowercase \n");
    printf ("3. Numberize \n");
    printf ("4. Canadianize \n");
    printf ("5. Respond \n");
    printf ("6. De-Space-it \n");
    printf ("0. Finished \n");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // 255 unit long array of characters
        char inputChars[255];
        
        printf("Input a string: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
        // print as a c string
        printf("Your string is %s\n", inputChars);
        
        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        // print NSString object
        NSLog(@"Input was: %@\n", inputString);
        
        
        int choice;
        do{
            displayMenu();
            
            
            scanf ("%i", &choice);
            switch (choice) {
                
                case 0:
                    NSLog (@"Thank you for playing!");
                    break;
                
                case 1: {
                    NSString *capitalLetters = [inputString uppercaseString];
                    NSLog(@"Input was: %@", capitalLetters);
                    
                    break;
                }
                    
                case 2: {
                    NSString *lowerCase = [inputString lowercaseString];
                    NSLog(@"Input was: %@", lowerCase);
                    break;
                }
                    
                case 3:{
                    int numberize = [inputString intValue];
                    NSLog(@"Input was: %d", numberize);
                    break;
                }
                    
                case 4:{
                    NSString *canadianize = [inputString stringByAppendingString:@", eh?"];
                    NSLog(@"Input was: %@", canadianize);
                    break;
                }
                    
                case 5:{
                    NSString *respond = inputString;
                    if ([respond containsString:@"?"]){
                        NSLog(@"I don't know.");
                    }else if([respond containsString:@"!"]){
                        NSLog(@"Woah calm down");
                    }else {
                        NSLog(@"Input was: %@", respond);
                    }
                    break;
                }
                    
                case 6:{
                    NSString *deSpaceIt = [ inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"Input was: %@", deSpaceIt);
                    break;
                    
                }
                default:
                    NSLog (@"Could not recognize number, please try again.");
                    break;
            }
            
        }
        while(choice!=0);
        
    }
    return 0;
}
