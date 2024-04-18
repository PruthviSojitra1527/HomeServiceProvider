import '../../../../Common/all_import.dart';

List language = [
  "Eng",
  "Guj",
  "Hn",
  "Spn",
  "Frn",
];

List<Map<String, dynamic>> dummyItemList = [
  {
    'imageUrl': ImagePath.cleaning,
    'name': Strings.cleaning,
    'title': '150 Experts',
  },
  {
    'imageUrl': ImagePath.homePainting,
    'name': Strings.homePainting,
    'title': '150 Experts',
  },
  {
    'imageUrl': ImagePath.washAndFold,
    'name': Strings.washAndFold,
    'title': '50 Experts',
  },
  {
    'imageUrl': ImagePath.cooking,
    'name': Strings.cooking,
    'title': '35 Experts',
  },
  {
    'imageUrl': ImagePath.plumbing,
    'name': Strings.pluming,
    'title': '250 Experts',
  },
  {
    'imageUrl': ImagePath.carpetCleaning,
    'name': Strings.carpetCleaning,
    'title': '30 Experts',
  },
];

List<Map<String, dynamic>> dummyUserList = [
  {
    'imageUrl': ImagePath.dummyUser,
    'name': "Robin Hood",
    'address': 'San Fransisco, USA',
    'email': 'olinasecona012@gmail.com',
    'available': {'day': 'Mon - Fri', 'time': '09:00 am - 06:00 pm'}
  },
  {
    'imageUrl': ImagePath.dummyUser1,
    'name': "Olena Second",
    'address': 'San Fransisco, USA',
    'email': 'olinasecona012@gmail.com',
    'available': {'day': 'Mon - Fri', 'time': '09:00 am - 06:00 pm'}
  },
  {
    'imageUrl': ImagePath.dummyUser2,
    'name': "Jessica John",
    'address': 'San Fransisco, USA',
    'email': 'olinasecona012@gmail.com',
    'available': {'day': 'Mon - Fri', 'time': '09:00 am - 06:00 pm'}
  },
  {
    'imageUrl': ImagePath.dummyUser3,
    'name': "Elina Jackson",
    'address': 'San Fransisco, USA',
    'email': 'olinasecona012@gmail.com',
    'available': {'day': 'Mon - Fri', 'time': '09:00 am - 06:00 pm'}
  },
];

List<Map<String, dynamic>> dummyReviewList = [
  {
    'imageUrl': ImagePath.dummyUser2,
    'name': "Deni Marts",
    'time': '23 Dec 2021 @ 5:30pm',
    'review': '''Recently visited health check up department of
Delisa for a whole body check up. The entire process
from check in to the end was seamless. The staff at the
health check department was courteous, helpful and
very attentive. I would highly recommend this hospital
to anyone looking for something similar cares.'''
  },
  {
    'imageUrl': ImagePath.dummyUser3,
    'name': 'Coli Anderson',
    'time': '2 Nov 2021 @ 10:18am',
    'review': '''It's very well mannered staff good coordination with
patients. Mrs. Navina gar assisted very well and
taken good care towards patients. Overall experience
is satisfactory.''',
  },
  {
    'imageUrl': ImagePath.dummyUser,
    'name': 'Devon Lane',
    'time': '2 Nov 2021 @ 10:18am',
    'review': '''It's very well mannered staff good coordination with
patients. Mrs. Provenance garu assisted very well and
taken good care towards patients. Overall experience
is satisfactory.''',
  },
  {
    'imageUrl': ImagePath.dummyUser3,
    'name': 'Jane Cooper',
    'time': '2 Nov 2021 @ 10:18am',
    'review': '''It's very well mannered staff good coordination with
patients. Mrs. Provenance garu assisted very well and
taken good care towards patients. Overall experience
is satisfactory.''',
  },
  {
    'imageUrl': ImagePath.dummyUser1,
    'name': 'Devon Lane',
    'time': '2 Nov 2021 @ 10:18am',
    'review': '''It's very well mannered staff good coordination with
patients. Mrs. Provenance garu assisted very well and
taken good care towards patients. Overall experience
is satisfactory.''',
  },
  {
    'imageUrl': ImagePath.dummyUser2,
    'name': 'Jane Cooper',
    'time': '2 Nov 2021 @ 10:18am',
    'review': '''It's very well mannered staff good coordination with
patients. Mrs. Provenance garu assisted very well and
taken good care towards patients. Overall experience
is satisfactory.''',
  },
];

List<Map<String, dynamic>> dummyImageList = [
  {
    'imageUrl': ImagePath.dummyImage1,
  },
  {
    'imageUrl': ImagePath.dummyImage2,
  },
  {
    'imageUrl': ImagePath.dummyImage3,
  },
  {
    'imageUrl': ImagePath.dummyImage4,
  },
  {
    'imageUrl': ImagePath.dummyImage5,
  },
  {
    'imageUrl': ImagePath.dummyImage6,
  },
];

List<Map<String, dynamic>> dummyCleanArea = [
  {
    'imageUrl': {
      'enable': ImagePath.houseA,
      'disable': ImagePath.house,
    },
    'name': 'House',
  },
  {
    'imageUrl': {
      'enable': ImagePath.roofA,
      'disable': ImagePath.roof,
    },
    'name': 'Roof',
  },
  {
    'imageUrl': {
      'enable': ImagePath.gardenA,
      'disable': ImagePath.garden,
    },
    'name': 'Garden',
  },
];

List<Map<String, dynamic>> dummyBooking = [
  {
    'imageUrl': ImagePath.cleaning,
    'serviceName': Strings.cleaning,
    'customerName': 'Courtney Henry',
    'booking Id': 'Booking ID: #00145',
    'customerImage': ImagePath.dummyUser3,
    'time': '6 Jan, 2021 at 9:00 am',
    'rate': '\$15',
  },
  {
    'imageUrl': ImagePath.washAndFold,
    'serviceName': Strings.washAndFold,
    'customerName': 'Savannah Nguyen',
    'booking Id': 'Booking ID: #00146',
    'customerImage': ImagePath.dummyUser,
    'time': '12 Feb, 2021 at 11:00 am',
    'rate': '\$20',
  },
  {
    'imageUrl': ImagePath.cooking,
    'serviceName': Strings.cooking,
    'customerName': 'Courtney Henry',
    'booking Id': 'Booking ID: #00147',
    'customerImage': ImagePath.dummyUser1,
    'time': '14 Mar, 2021 at 8:00 am',
    'rate': '\$60',
  },
  {
    'imageUrl': ImagePath.carpetCleaning,
    'serviceName': Strings.carpetCleaning,
    'customerName': 'Savannah Nguyen',
    'booking Id': 'Booking ID: #00148',
    'customerImage': ImagePath.dummyUser2,
    'time': '26 Apr, 2021 at 9:00 am',
    'rate': '\$25',
  },
  {
    'imageUrl': ImagePath.homePainting,
    'serviceName': Strings.homePainting,
    'customerImage': ImagePath.dummyUser3,
    'booking Id': 'Booking ID: #00149',
    'customerName': 'Courtney Henry',
    'time': '28 Apr, 2021 at 10:00 am',
    'rate': '\$35',
  },
  {
    'imageUrl': ImagePath.plumbing,
    'serviceName': Strings.pluming,
    'customerImage': ImagePath.dummyUser,
    'booking Id': 'Booking ID: #00150',
    'customerName': 'stephen Hund',
    'time': '26 Apr, 2021 at 9:00 am',
    'rate': '\$75',
  },
];

List<Map<String, dynamic>> dummyChatList = [
  {
    'img': ImagePath.dummyUser,
    'name': 'jessica Paul',
    'msg': 'Hello, I’m here.',
    'time': 'Just now',
    'unseen': 3,
  },
  {
    'img': ImagePath.dummyUser1,
    'name': 'Alexa John',
    'msg': 'Yes, of course!',
    'time': '5 m',
    'unseen': 5,
  },
  {
    'img': ImagePath.dummyUser2,
    'name': 'Here Roy',
    'msg': 'Where do you work now?',
    'time': '23 h',
  },
  {
    'img': ImagePath.dummyUser3,
    'name': 'Robbin Hood',
    'msg': 'Sunday?',
    'time': '48 h',
  },
  {
    'img': ImagePath.dummyUser,
    'name': 'Danial Bob',
    'msg': '06:00pm closed?',
    'time': '1 w',
  },
  {
    'img': ImagePath.dummyUser3,
    'name': 'Eliana Cruz',
    'msg': 'Yes Boss!',
    'time': '6 w',
  },
  {
    'img': ImagePath.dummyUser2,
    'name': 'jessica Paul',
    'msg': 'Hello',
    'time': '2 M',
  },
  {
    'img': ImagePath.dummyUser,
    'name': 'Jessy Holly',
    'msg': 'Hey!',
    'time': '6 M',
  },
];

List<Map<String, dynamic>> dummyNotification = [
  {
    'time': 'Today',
    'notifications': [
      {
        'icon': ImagePath.greenCheck,
        'msg': '''You have successfully changed your\npassword.''',
        'time': 'Now',
      },
      {
        'icon': ImagePath.cancel,
        'msg': '''Your booking cancelled due to\ninactivity.''',
        'time': '5 h',
      },
      {
        'icon': ImagePath.yellowMassage,
        'msg': '''You have one unread message please\ncheck your inbox.''',
        'time': '18 h',
      },
    ]
  },
  {
    'time': 'Yesterday',
    'notifications': [
      {
        'icon': ImagePath.gallery,
        'msg': '''You have successfully changed your\nprofile picture.''',
        'time': '08:24 pm',
      },
      {
        'icon': ImagePath.greenCheck,
        'msg': '''Your booking has been successfully\ncomplete.''',
        'time': '06:28 pm',
      },
      {
        'icon': ImagePath.cancel,
        'msg': '''Your booking cancelled due to\ninactivity.''',
        'time': '02:13 pm',
      },
      {
        'icon': ImagePath.greenCheck,
        'msg': '''Your booking has been successfully\ncomplete.''',
        'time': '08:.38 am',
      },
    ]
  },
];
List<Map<String, dynamic>> dummyFAQs = [
  {
    'str1':
        'Contrary to popular belief, Lorem Ipsum \nis not simply random text.',
    'str2': '''There are many variations of passages of Lorem
Ipsum available, but the majority have suffered 
alteration in some form.'''
  },
  {
    'str1': 'Lorem Ipsum is not simply random text.',
    'str2': '''There are many variations of passages of Lorem
Ipsum available, but the majority have suffered 
alteration in some form.'''
  },
  {
    'str1': 'Contrary to popular belief.',
    'str2': '''There are many variations of passages of Lorem
Ipsum available, but the majority have suffered 
alteration in some form.'''
  },
  {
    'str1':
        'All the Lorem Ipsum generators on the \nInternet tend to repeat predefined.',
    'str2': '''There are many variations of passages of Lorem
Ipsum available, but the majority have suffered 
alteration in some form.'''
  },
  {
    'str1': 'Lorem Ipsum is therefore always free.',
    'str2': '''There are many variations of passages of Lorem
Ipsum available, but the majority have suffered 
alteration in some form.'''
  },
];

List<Map<String, dynamic>> dummyWalletList = [
  {
    'imageUrl': ImagePath.cleaning,
    'name': Strings.cleaning,
    'time': '08 jan,2022 | 19:30',
    'rate': '\$22',
  },
  {
    'imageUrl': ImagePath.wallet,
    'name': Strings.withdraw,
    'time': '08 jan,2022 | 19:30',
    'rate': '\$22',
  },
  {
    'imageUrl': ImagePath.cleaning,
    'name': Strings.cleaning,
    'time': '08 jan,2022 | 19:30',
    'rate': '\$22',
  },
  {
    'imageUrl': ImagePath.cleaning,
    'name': Strings.cleaning,
    'time': '08 jan,2022 | 19:30',
    'rate': '\$22',
  },
  {
    'imageUrl': ImagePath.cleaning,
    'name': Strings.cleaning,
    'time': '08 jan,2022 | 19:30',
    'rate': '\$22',
  },
  {
    'imageUrl': ImagePath.cleaning,
    'name': Strings.cleaning,
    'time': '08 jan,2022 | 19:30',
    'rate': '\$22',
  },
];

List<Map<String, dynamic>> dummyCustomerList = [
  {
    'imageUrl': ImagePath.dummyUser,
    'name': 'Olin Secona',
    'email': 'olinasecona@gmail.com',
    'phone': '(480) 555-0103',
  },
  {
    'imageUrl': ImagePath.dummyUser1,
    'name': 'Arlene McCoy',
    'email': 'arlenemccoy@gmail.com',
    'phone': '(307) 555-0133',
  },
  {
    'imageUrl': ImagePath.dummyUser2,
    'name': 'Eleanor Pena',
    'email': 'eleanorpena@gmail.com',
    'phone': '(671) 555-0110',
  },
  {
    'imageUrl': ImagePath.dummyUser3,
    'name': 'Marvin McKinney',
    'email': 'marvinmckinney@gmail.com',
    'phone': '(319) 555-0115',
  },
  {
    'imageUrl': ImagePath.dummyUser,
    'name': 'Ronald Richards',
    'email': 'ronaldrichards@gmail.com',
    'phone': '(480) 555-0103',
  },
];

List<String> days = [
  Strings.sunday,
  Strings.monday,
  Strings.tuesday,
  Strings.wednesday,
  Strings.thursday,
  Strings.friday,
  Strings.saturday,
];

List<String> subTime = [
  Strings.morning,
  Strings.afternoon,
  Strings.evening,
];

List<String> time = [
  Strings.time1,
  Strings.time2,
  Strings.time3,
];
