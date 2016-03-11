//
//  Patient.h
//  PatientDoctor
//
//  Created by Sergio Martinez on 2016-03-10.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property NSString *age;
@property NSString *name;
@property BOOL hasHealthCard;
@property NSString *prescription;
@property NSMutableSet *medsTaken;

- (id)initWithName:(NSString *)aName andAge:(NSString *)anAge wHealthCard:(BOOL)aHealthCard;

- (void)visitDoctor:(Doctor *)visitedDoctor;



@end
