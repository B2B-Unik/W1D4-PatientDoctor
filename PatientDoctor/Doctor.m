//
//  Doctor.m
//  PatientDoctor
//
//  Created by Sergio Martinez on 2016-03-10.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (id)initWithName:(NSString *)aName aSpecialization:(NSString *)aSpecilization {
    
    self = [super init];
    
    if (self) {
        
        self.name = aName;
        self.specialization = aSpecilization;
        self.acceptedPatients = [NSMutableSet set];
        self.medications = [[NSDictionary alloc] initWithObjectsAndKeys:@"Tylenol", @"Headache", @"Honey", @"Cough", @"Rest", @"Sneezing", nil];
    }
    
    return self;
}

- (void)accept:(Patient *)patientToBeAccepted {
    
    if (patientToBeAccepted.hasHealthCard) {
        
        [self.acceptedPatients addObject:patientToBeAccepted];
    }
}

- (void)requestMedication:(Patient *)patient withSymptom:(NSString *)symptom {
    
    if ([self.acceptedPatients containsObject:patient]) {

        [patient.medsTaken addObject:[self.medications valueForKey:symptom]];
        
        patient.prescription = [self.medications valueForKey:symptom];
        
        NSLog(@"%@ prescribed %@ to %@",self.name,patient.prescription,patient.name);

        for (NSString *meds in patient.medsTaken) {
            NSLog(@"Prescriptions taken by %@: %@",patient.name, meds);

        }
        
    } else {
        NSLog(@"You're not an accepted patient.");
    }
}
@end
