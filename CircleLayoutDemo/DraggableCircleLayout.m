//
//  Copyright (c) 2013 Luke Scott
//  https://github.com/lukescott/DraggableCollectionView
//  Distributed under MIT license
//

#import "DraggableCircleLayout.h"
#import "LSCollectionViewLayoutHelper.h"
#import <objc/runtime.h>

@interface DraggableCircleLayout ()
{
    NSMutableDictionary *layoutCache;
    NSMutableDictionary *cellMap;
}
@end

@implementation DraggableCircleLayout

- (LSCollectionViewLayoutHelper *)getHelper
{
    LSCollectionViewLayoutHelper *helper = objc_getAssociatedObject(self, "LSCollectionViewLayoutHelper");
    if(helper == nil) {
        helper = [[LSCollectionViewLayoutHelper alloc] initWithCollectionViewLayout:self];
        objc_setAssociatedObject(self, "LSCollectionViewLayoutHelper", helper, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return helper;
}

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
{
    return [[self getHelper] modifiedLayoutAttributesForElements:[super layoutAttributesForElementsInRect:rect]];
}

- (NSIndexPath *)translateIndexPath:(NSIndexPath *)indexPath
{
    return [[self getHelper] translateIndexPath:indexPath];
}

@end