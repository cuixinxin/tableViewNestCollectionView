//
//  TestTableViewCell.h
//  TableViewNestCollectionView
//
//  Created by cuixin on 16/9/26.
//  Copyright © 2016年 cuixin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TestTableViewCellDelegate <NSObject>

-(void)selectIndex:(NSIndexPath *)indexPath;

@end

@interface TestTableViewCell : UITableViewCell <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, weak)  id<TestTableViewCellDelegate> delegate;

+(TestTableViewCell *)testTableViewCell:(UITableView *)tableView;
@end
