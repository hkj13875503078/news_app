// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:news_app/common/entitys/entitys.dart';
import 'package:news_app/common/utils/utils.dart';
import 'package:news_app/common/values/values.dart';
import 'package:news_app/common/widgets/widgets.dart';

Widget newsItem(NewsItem item) {
  return Container(
    height: duSetHeight(161),
    padding: EdgeInsets.all(duSetWidth(20)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // 图
        imageCached(
          item.thumbnail.toString(),
          width: duSetWidth(121),
          height: duSetWidth(121),
        ),
        // 右侧
        SizedBox(
          width: duSetWidth(194),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // 作者
              Container(
                margin: EdgeInsets.all(0),
                child: Text(
                  item.author.toString(),
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.normal,
                    color: AppColors.thirdElementText,
                    fontSize: duSetFontSize(14),
                    height: 1,
                  ),
                ),
              ),
              // 标题
              Container(
                margin: EdgeInsets.only(top: duSetHeight(10)),
                child: Text(
                  item.title.toString(),
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                    fontSize: duSetFontSize(16),
                    height: 1,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 3,
                ),
              ),
              // Spacer
              Spacer(),
              // 一行 3 列
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // 分类
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: duSetWidth(60),
                      ),
                      child: Text(
                        item.category.toString(),
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.normal,
                          color: AppColors.secondaryElementText,
                          fontSize: duSetFontSize(14),
                          height: 1,
                        ),
                        overflow: TextOverflow.clip,
                        maxLines: 1,
                      ),
                    ),
                    // 添加时间
                    Container(
                      width: duSetWidth(15),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: duSetWidth(100),
                      ),
                      child: Text(
                        '• ${duTimeLineFormat(item.addtime)}',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.normal,
                          color: AppColors.thirdElementText,
                          fontSize: duSetFontSize(14),
                          height: 1,
                        ),
                        overflow: TextOverflow.clip,
                        maxLines: 1,
                      ),
                    ),
                    // 更多
                    Spacer(),
                    InkWell(
                      child: Icon(
                        Icons.more_horiz,
                        color: AppColors.primaryText,
                        size: 24,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
