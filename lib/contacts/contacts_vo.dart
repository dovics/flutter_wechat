import 'package:flutter/cupertino.dart';

class ContactVO {
  String seationKey;
  String name;
  String avatarUrl;
  ContactVO({@required this.seationKey, this.name, this.avatarUrl});
}

List<ContactVO> contactData =[
  ContactVO(
    seationKey: 'A',
    name:'A',
    avatarUrl:'https://pic1.zhimg.com/80/v2-d1a1e34db9a927a6c2bcf4042545275e_720w.jpg'
  ),
  ContactVO(
    seationKey: 'A',
    name:'A',
    avatarUrl:'https://pic1.zhimg.com/80/v2-d1a1e34db9a927a6c2bcf4042545275e_720w.jpg'
  ),
  ContactVO(
    seationKey: 'B',
    name:'A',
    avatarUrl:'https://pic1.zhimg.com/80/v2-d1a1e34db9a927a6c2bcf4042545275e_720w.jpg'
  ),
];