//
//  Doctor.h
//  PatientDoctor
//
//  Created by Sergio Martinez on 2016-03-10.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;
@class Prescriptions;

@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;
@property NSMutableSet *acceptedPatients;
@property NSDictionary *medications;


- (id)initWithName:(NSString *)aName aSpecialization:(NSString *)aSpecilization;

- (void)accept:(Patient *)patientToBeAccepted;

- (void)requestMedication:(Patient *)patient withSymptom:(NSString *)symptom;




@end
