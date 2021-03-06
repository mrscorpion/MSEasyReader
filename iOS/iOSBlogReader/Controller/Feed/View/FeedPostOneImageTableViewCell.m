//
//  FeedTableViewCell.m
//  iOSBlogReader
//
//  Created by mr.scorpion on 16/4/11.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import "FeedPostOneImageTableViewCell.h"
#import "FeedItemManager.h"
#import "AppUtil.h"
#import <YYWebImage.h>


@interface FeedPostOneImageTableViewCell ()
{
    UILabel *_titleLabel;
    UILabel *_dateLabel;
    UILabel *_authorLabel;
    
    UIImageView *_imageView;
}

@end

@implementation FeedPostOneImageTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        [self _setupView];
    }
    return self;
}

- (void)_setupView{
    UIView *root = self.contentView;
    _titleLabel = [UILabel new];
    _titleLabel.font = [UIFont systemFontOfSize:18];
    _titleLabel.textColor = [UIColor blackColor];
    _titleLabel.numberOfLines = 2;
    [root addSubview:_titleLabel];
    
    _dateLabel = [UILabel new];
    _dateLabel.font = [UIFont systemFontOfSize:14];
    _dateLabel.textColor = UIColorGraySubTitle;
    [root addSubview:_dateLabel];
    
    _authorLabel = [UILabel new];
    _authorLabel.font = [UIFont systemFontOfSize:14];
    _authorLabel.textColor = UIColorGraySubTitle;
    [root addSubview:_authorLabel];
    
    _imageView = [UIImageView new];
    _imageView.layer.borderWidth = 0.5;
    _imageView.layer.borderColor = UIColorFromRGBA(0xd7dae2, 1.0).CGColor;
    [root addSubview:_imageView];
    
    [_imageView mas_makeConstraints:^(MASConstraintMaker *make){
        make.width.equalTo(@60);
        make.height.equalTo(@60);
        make.right.equalTo(root).offset(-20);
        make.centerY.equalTo(root);
    }];

    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.left.equalTo(root).offset(38/2);
        make.top.equalTo(root).offset(34/2);
        make.right.equalTo(_imageView.mas_left).offset(-38/2);
    }];
    
    [_dateLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.left.equalTo(_titleLabel);
        make.top.equalTo(_titleLabel.mas_bottom).offset(8);
    }];
    
    [_authorLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.left.equalTo(_dateLabel.mas_right).offset(8);
        make.right.lessThanOrEqualTo(_imageView.mas_left).offset(-38/2);
        make.centerY.equalTo(_dateLabel.mas_centerY);
    }];
}

- (void)prepareForReuse{
    [super prepareForReuse];
    _imageView.image = nil;
}

- (void)setTitle:(NSString *)title{
    _titleLabel.text = title?title:@"";
}

- (void)setDate:(NSDate *)date{
    _dateLabel.text = [[AppUtil util] formatDate:date];
}

- (void)setAuthor:(NSString *)author{
    _authorLabel.text = author;
}
- (void)setImageURL:(NSString *)imageURL{
    if(!imageURL)return;
    [_imageView yy_setImageWithURL:[NSURL URLWithString:imageURL] placeholder:nil options:kNilOptions completion:^(UIImage * _Nullable image, NSURL * _Nonnull url, YYWebImageFromType from, YYWebImageStage stage, NSError * _Nullable error) {
    }];
}


@end
