//
//  FirebaseApp.h
//  FirebaseViewer
//
//  Created by Adam Shamblin on 2/11/14.
//  Copyright (c) 2014 Adam Shamblin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface FirebaseApp : NSManagedObject

@property (nonatomic, retain) NSString * appName;
@property (nonatomic, retain) NSString * appURL;

@end
