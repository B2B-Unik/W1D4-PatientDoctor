//
//  Patient.m
//  PatientDoctor
//
//  Created by Sergio Martinez on 2016-03-10.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (id)initWithName:(NSString *)aName andAge:(NSString *)anAge wHealthCard:(BOOL)aHealthCard {
    
    self = [super init];
    
    if (self) {
        
        self.name = aName;
        self.age = anAge;
        self.hasHealthCard = aHealthCard;
        self.medsTaken = [[NSMutableSet alloc]init];
    }
    
    return self;
}

- (void)visitDoctor:(Doctor *)visitedDoctor {
    
    NSLog(@"%@ is visiting doctor %@ who specializes in %@", self.name, visitedDoctor.name, visitedDoctor.specialization);

}

@end
