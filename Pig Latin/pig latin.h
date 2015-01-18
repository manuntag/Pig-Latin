//
//  pig latin.h
//  Pig Latin
//
//  Created by David Manuntag on 2015-01-17.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface pig_latin : NSObject

-(void)pigLatin:(NSString*)string;

-(NSArray*)seperateWordsInSentance:(NSString*)string;

-(NSString*)keepLastThreeChar:(NSString*)string;

-(NSString*)removeLastTwoChar:(NSString*)string;

-(NSString*)addWordsTogether:(NSString*)lastTwoChar allbutLastTwo:(NSString*)allButLastTwo;

-(NSString*)addAYtoEndOfWord:(NSString*)combinedString;

@end
