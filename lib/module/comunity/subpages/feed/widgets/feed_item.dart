import 'package:estacao_inteligente/shared/model/comment_model.dart';
import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class FeedItem extends StatelessWidget {
  final CommentModel comment;
  const FeedItem({Key? key, required this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .18,
      margin: EdgeInsets.symmetric(vertical: 5),
      color: AppColors.whiteSecoundary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width * .18,
            height: size.height * .1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(comment.user!.photoURL ??
                        'https://www.clipartkey.com/mpngs/m/141-1414123_avatar-image-png-red.png'))),
          ),
          Column(
            children: [
              Container(
                height: size.height * .04,
                width: size.width * .65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: comment.linha!.color,
                          ),
                        ),
                        SizedBox(width: size.width * .01),
                        Text(
                          comment.linha!.name,
                          style: AppTextStyles.normalTextBlack
                              .copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                    Expanded(child: SizedBox(width: size.width * .2)),
                    Text(
                      'há ${comment.time.toString()} min',
                      style: AppTextStyles.normalTextBlack
                          .copyWith(fontSize: 13, color: AppColors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * .1,
                margin: EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.whitePrimary,
                ),
                child: Row(
                  children: [
                    Container(
                      width: size.width * .01,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: comment.linha!.color,
                      ),
                    ),
                    Container(
                      width: size.width * .7,
                      child: Text(
                        comment.typeReport,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.normalTextBlack
                            .copyWith(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
