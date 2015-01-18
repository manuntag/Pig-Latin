//
//  pig latin.m
//  Pig Latin
//
//  Created by David Manuntag on 2015-01-17.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "pig latin.h"

@implementation pig_latin


-(NSArray*)seperateWordsInSentance:(NSString*)string {
    
    NSArray * sepratedWordsArray = [string componentsSeparatedByString:@" "];
    
    return sepratedWordsArray;
    
}


-(NSString*)keepLastThreeChar:(NSString*)string {
    
    
    NSUInteger stringLength = [string length];
    
    NSUInteger lengthOfCut = stringLength - 3;
    
    NSRange  rangeOfCut = NSMakeRange(0, lengthOfCut);
    
    NSString * lastTwoChar = [string stringByReplacingCharactersInRange:rangeOfCut withString:@""];
    
//    NSLog(@"%@",lastTwoChar);
    
    return lastTwoChar;
    
}



-(NSString*)removeLastTwoChar:(NSString*)string {
    
    
    NSUInteger  stringLength = [string length];
    
    NSUInteger location = stringLength - 2;
    
    NSRange  lastTwoChar = NSMakeRange(location, 2);
    
    NSString * allButLastTwo = [string stringByReplacingCharactersInRange:lastTwoChar withString:@""];
    
    return allButLastTwo;
    
    
}


-(NSString*)addWordsTogether:(NSString*)lastThreeChar allbutLastTwo:(NSString*)allButLastTwo {
    
    NSMutableString * combinedWord = [[NSMutableString alloc]init];
    [combinedWord insertString:lastThreeChar atIndex:0];
    [combinedWord insertString:allButLastTwo atIndex:3];
    
    return combinedWord;
}


-(NSString*)addAYtoEndOfWord:(NSString*)combinedString {
    
    
    NSString * finalWord = [combinedString stringByAppendingString:@"ay"];
    
    return finalWord;
    
}


-(void)pigLatin:(NSString*)string {
    
    int i;
    
    NSArray* separatedWordsArray = [self  seperateWordsInSentance:string];
    
    
    for (i=0; i<separatedWordsArray.count; i++) {
   
        if ([separatedWordsArray[i] length] < 4) {
            
            
            NSString *smallWord = [self addAYtoEndOfWord:separatedWordsArray[i]];
            
            NSLog(@"%@", smallWord);
            
            
            
        }else {
            
            
            NSString * lastThreeChar = [self keepLastThreeChar:separatedWordsArray[i]];
            
            NSString * allButLastTwoChar = [self  removeLastTwoChar:separatedWordsArray[i]];
            
            NSString * combinedWord = [self  addWordsTogether:lastThreeChar allbutLastTwo:allButLastTwoChar];
            
            NSString * finalWord = [self addAYtoEndOfWord:combinedWord];
            
            NSLog(@"%@",finalWord);


        }

        
    }
    
    
}




@end
