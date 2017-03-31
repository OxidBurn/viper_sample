// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to UserInfoModelObject.m instead.

#import "_UserInfoModelObject.h"

@implementation UserInfoModelObjectID
@end

@implementation _UserInfoModelObject

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"UserInfo" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"UserInfo";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"UserInfo" inManagedObjectContext:moc_];
}

- (UserInfoModelObjectID*)objectID {
	return (UserInfoModelObjectID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"userIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"userID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic email;

@dynamic fullName;

@dynamic imagePath;

@dynamic imageURL;

@dynamic password;

@dynamic userID;

- (int16_t)userIDValue {
	NSNumber *result = [self userID];
	return [result shortValue];
}

- (void)setUserIDValue:(int16_t)value_ {
	[self setUserID:@(value_)];
}

- (int16_t)primitiveUserIDValue {
	NSNumber *result = [self primitiveUserID];
	return [result shortValue];
}

- (void)setPrimitiveUserIDValue:(int16_t)value_ {
	[self setPrimitiveUserID:@(value_)];
}

@dynamic username;

@end

@implementation UserInfoModelObjectAttributes 
+ (NSString *)email {
	return @"email";
}
+ (NSString *)fullName {
	return @"fullName";
}
+ (NSString *)imagePath {
	return @"imagePath";
}
+ (NSString *)imageURL {
	return @"imageURL";
}
+ (NSString *)password {
	return @"password";
}
+ (NSString *)userID {
	return @"userID";
}
+ (NSString *)username {
	return @"username";
}
@end

