//
//  DDHCollectionViewDelegateAndDataSource.m
//  CollectionViewDemo
//
//  Created by dasdom on 29.12.13.
//  Copyright (c) 2013 dasdom. All rights reserved.
//
//  The MIT License (MIT)
//
//  Copyright (c) 2013 Dominik Hauser
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//  the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


#import "DDHCollectionViewDelegateAndDataSource.h"
#import "DDHCollectionViewCell.h"

@implementation DDHCollectionViewDelegateAndDataSource

#pragma mark - cell registration protocol method
- (void)registerCellsForCollectionView:(UICollectionView *)collectionView {
    [collectionView registerClass:[DDHCollectionViewCell class] forCellWithReuseIdentifier:DDHCollectionViewCellIdentifier];
}

#pragma mark - collection view data source
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 3;
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    DDHCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:DDHCollectionViewCellIdentifier forIndexPath:indexPath];
    
    cell.nameLabel.text = [NSString stringWithFormat:@"section: %d, item: %d", indexPath.section, indexPath.item];
    
    return cell;
}

@end
