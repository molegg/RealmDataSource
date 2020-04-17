//
//  RealmDataSource.h
//  nodeMe
//
//  Created by alean on 18/11/19.
//  Copyright © 2019 cybertech inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
#import <Realm/RLMObjectStore.h>

NS_ASSUME_NONNULL_BEGIN

@interface RealmBaseObject : RLMObject

@property int uid;
@property int refCount;
@property int loginid;

@end

typedef void (^RLMNotifyBlock)(RLMResults * _Nullable data);

@interface RealmDataSource : NSObject

@property (nonatomic, readonly) RLMRealm  *realm;

+ (instancetype)sharedClient;

- (void)watchWithClassName:(NSString *)className
                 predicate:(nullable NSPredicate *)predicate
                      sort:(NSArray<RLMSortDescriptor *> *)sortDescriptors
               notifyBlock:(RLMNotifyBlock)notifyBlock
                       key:(NSString *)key;

- (void)stopWatchForKey:(NSString *)key;

- (void)addObject:(RealmBaseObject *)object;

- (void)addObjects:(NSArray<RealmBaseObject *> *)array;

- (void)addObjects:(nullable NSArray<RealmBaseObject *> *)array
   objectClassName:(nullable NSString *)objectClassName
           syncAll:(BOOL)syncAll
         predicate:(nullable NSPredicate *)predicate;

- (void)deleteObjects:(NSArray<RealmBaseObject *> *)array;

@end

NS_ASSUME_NONNULL_END
