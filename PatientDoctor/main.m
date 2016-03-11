//
//  main.m
//  PatientDoctor
//
//  Created by Sergio Martinez on 2016-03-10.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        
        Patient *sergio = [[Patient alloc] initWithName:@"Sergio" andAge:@"35" wHealthCard:YES];
        
        Doctor *drChu = [[Doctor alloc] initWithName:@"Dr.Chu" aSpecialization:@"Kids Doctor"];
        
        [sergio visitDoctor:drChu];
        
        [drChu accept:sergio];
        
        [drChu requestMedication:sergio withSymptom:@"Headache"];
        
               
    }
    return 0;
}
