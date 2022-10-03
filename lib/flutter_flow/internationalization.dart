import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi', 'mr'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
    String? mrText = '',
  }) =>
      [enText, hiText, mrText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Add_UsersCopy
  {
    'ifqmxk8b': {
      'en': 'Home',
      'hi': '',
      'mr': '',
    },
  },
  // User_Login
  {
    'snqxc9yh': {
      'en': 'Welcome Back!',
      'hi': 'वापसी पर स्वागत है!',
      'mr': 'परत स्वागत आहे!',
    },
    '0n7ipkur': {
      'en': 'Use the form below to access your account.',
      'hi': 'अपने खाते तक पहुंचने के लिए नीचे दिए गए फॉर्म का प्रयोग करें।',
      'mr': 'तुमच्या खात्यात प्रवेश करण्यासाठी खालील फॉर्म वापरा.',
    },
    '6wt1ggme': {
      'en': 'Enter Your Email',
      'hi': 'अपना ईमेल दर्ज करें',
      'mr': 'तुमचा ईमेल टाका',
    },
    '4ff5be0h': {
      'en': 'Password',
      'hi': 'पासवर्ड',
      'mr': 'पासवर्ड',
    },
    'mpis9gi7': {
      'en': 'Login',
      'hi': 'लॉग इन करें',
      'mr': 'लॉगिन करा',
    },
    '74j28a14': {
      'en': 'Forgot Password?',
      'hi': 'पासवर्ड भूल गए?',
      'mr': 'पासवर्ड विसरलात?',
    },
    'qxh59lik': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुख्यपृष्ठ',
    },
  },
  // ClinicalAssesment
  {
    'we3sbmzy': {
      'en': '',
      'hi': '[कुछ संकेत पाठ...]',
      'mr': '[काही संकेत मजकूर...]',
    },
    'ivuoe4ce': {
      'en': '       Clinial',
      'hi': 'क्लिनिकल',
      'mr': 'क्लिनिकल',
    },
    'cupsh23p': {
      'en': '[Some hint text...]',
      'hi': '[कुछ संकेत पाठ...]',
      'mr': '[काही संकेत मजकूर...]',
    },
    'eym2y57e': {
      'en': '   Nursing',
      'hi': 'नर्सिंग',
      'mr': 'नर्सिंग',
    },
    'zarmgsz3': {
      'en': 'Psychological',
      'hi': 'मनोवैज्ञानिक',
      'mr': 'मानसशास्त्रीय',
    },
    'rifzb6qk': {
      'en': 'Pain Score',
      'hi': 'दर्द स्कोर',
      'mr': 'वेदना स्कोअर',
    },
    '4v690c79': {
      'en': 'ESAS Score',
      'hi': 'ईएसएएस स्कोर',
      'mr': 'ESAS स्कोअर',
    },
    'ecmi59v7': {
      'en': 'End of life care',
      'hi': 'जीवन देखभाल का अंत',
      'mr': 'जीवन काळजी समाप्त',
    },
    'q4yj1wiy': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'jieg7qh2': {
      'en': 'Breathlessness',
      'hi': 'सांस फूलना',
      'mr': 'धाप लागणे',
    },
    'cgz1foss': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'wlrfpgej': {
      'en': 'Titration',
      'hi': 'टाइट्रेट करना',
      'mr': 'टायट्रेशन',
    },
    'zp53nqaq': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'ij7d3vks': {
      'en': 'Restlessness',
      'hi': 'बेचैनी',
      'mr': 'अस्वस्थता',
    },
    'vzv741iz': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'z3upss7d': {
      'en': 'Remission',
      'hi': 'क्षमा',
      'mr': 'माफी',
    },
    'pb48bd7s': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'vmrsbci6': {
      'en': 'Clinically stable',
      'hi': 'चिकित्सकीय रूप से स्थिर',
      'mr': 'वैद्यकीयदृष्ट्या स्थिर',
    },
    's8idi973': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'ra8d7fxo': {
      'en': 'Next',
      'hi': 'अगला',
      'mr': 'पुढे',
    },
    'se2mrglz': {
      'en': 'Assesment',
      'hi': 'आकलन',
      'mr': 'मूल्यांकन',
    },
    'dhjqcy4t': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुख्यपृष्ठ',
    },
  },
  // onBoarding_Screen
  {
    '1tset42e': {
      'en': 'Holistic Approach',
      'hi': 'समग्र दृष्टिकोण',
      'mr': 'समग्र दृष्टीकोन',
    },
    '1xhr8csy': {
      'en':
          'Care of a body, mind & spirit : Focusing on, social, emotional, cultural, spiritual & intellectual or knowledge aspects of caresupported by an interdisciplinary team & training.',
      'hi':
          'एक शरीर, मन और आत्मा की देखभाल: एक अंतःविषय टीम और प्रशिक्षण द्वारा समर्थित सामाजिक, भावनात्मक, सांस्कृतिक, आध्यात्मिक और बौद्धिक या देखभाल के ज्ञान पहलुओं पर ध्यान केंद्रित करना।',
      'mr':
          'शरीर, मन आणि आत्म्याची काळजी: सामाजिक, भावनिक, सांस्कृतिक, आध्यात्मिक आणि बौद्धिक किंवा ज्ञानाच्या पैलूंवर लक्ष केंद्रित करणे, आंतरविद्याशाखीय संघ आणि प्रशिक्षणाद्वारे समर्थित.',
    },
    'wqdbpai7': {
      'en': 'Quality of Life',
      'hi': 'जीवन स्तर',
      'mr': 'जीवन गुणवत्ता',
    },
    '1vvr0j6v': {
      'en':
          'Patient-Centered care incorporting respect for patient\'s values and preferences, provides information in clear & understandable terms, promotes autonomy in decision-making & attends to the need for physical comfort & emotional support.',
      'hi':
          'रोगी-केंद्रित देखभाल रोगी के मूल्यों और वरीयताओं के लिए सम्मान, स्पष्ट और समझने योग्य शर्तों में जानकारी प्रदान करती है, निर्णय लेने में स्वायत्तता को बढ़ावा देती है और शारीरिक आराम और भावनात्मक समर्थन की आवश्यकता को पूरा करती है।',
      'mr':
          'रुग्ण-केंद्रित काळजी रुग्णाची मूल्ये आणि प्राधान्ये यांचा आदर करते, स्पष्ट आणि समजण्यायोग्य अटींमध्ये माहिती प्रदान करते, निर्णय घेण्याच्या स्वायत्ततेला प्रोत्साहन देते आणि शारीरिक आराम आणि भावनिक समर्थनाची आवश्यकता पूर्ण करते.',
    },
    'f7asmnv9': {
      'en': 'Patients & Families',
      'hi': 'रोगी और परिवार',
      'mr': 'रुग्ण आणि कुटुंबे',
    },
    '9pc9pixd': {
      'en':
          'Patients referred to DPH have an expectation of dying, therefore care of the families is included in the care i.e, Care of the infected and affected by the team while the patient is alive and into the bereavement period.',
      'hi':
          'डीपीएच रेफर किए गए मरीजों के मरने की उम्मीद होती है, इसलिए देखभाल में परिवारों की देखभाल शामिल होती है यानी, मरीज के जीवित रहने और शोक की अवधि में टीम द्वारा संक्रमित और प्रभावित की देखभाल।',
      'mr':
          'DPH कडे संदर्भित केलेल्या रुग्णांना मृत्यूची अपेक्षा असते, म्हणून कुटुंबांची काळजी घेणे ही काळजीमध्ये समाविष्ट असते, म्हणजे, रुग्ण जिवंत असताना आणि शोकांच्या कालावधीत संघाद्वारे संक्रमित आणि प्रभावित व्यक्तीची काळजी.',
    },
    'i9qw6otq': {
      'en': 'Explore Now',
      'hi': 'अभी एक्सप्लोर करें',
      'mr': 'आता एक्सप्लोर करा',
    },
  },
  // forgot_password
  {
    'q779yft9': {
      'en':
          'Don\'t remember your password? Enter the email associated with your account below and we will send you a new link.',
      'hi':
          'अपना पासवर्ड याद नहीं है? नीचे अपने खाते से संबद्ध ईमेल दर्ज करें और हम आपको एक नया लिंक भेजेंगे।',
      'mr':
          'तुमचा पासवर्ड आठवत नाही? खाली तुमच्या खात्याशी संबंधित ईमेल एंटर करा आणि आम्ही तुम्हाला एक नवीन लिंक पाठवू.',
    },
    'ahb6aode': {
      'en': 'Enter Your Email',
      'hi': 'अपना ईमेल दर्ज करें',
      'mr': 'तुमचा ईमेल टाका',
    },
    'h8xadmzy': {
      'en': 'Send Reset Link',
      'hi': 'रीसेट लिंक भेजें',
      'mr': 'रीसेट लिंक पाठवा',
    },
    '37gheon0': {
      'en': 'Forgot Password',
      'hi': 'पासवर्ड भूल गए',
      'mr': 'पासवर्ड विसरलात',
    },
    'seefhxjg': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुख्यपृष्ठ',
    },
  },
  // SettingPage
  {
    'iwdcms72': {
      'en': 'Select  Language',
      'hi': 'भाषा चुने',
      'mr': 'भाषा निवडा',
    },
    'xj25snxx': {
      'en': 'Setting',
      'hi': 'स्थापना',
      'mr': 'सेटिंग',
    },
    '75h1wv7v': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुख्यपृष्ठ',
    },
  },
  // ClinicalAssesmentCopy
  {
    'elz7kvfg': {
      'en': 'Patient assessment',
      'hi': '',
      'mr': '',
    },
    '9g4yakkg': {
      'en': 'ESAS Score',
      'hi': '',
      'mr': '',
    },
    'qbjkt77u': {
      'en': 'Pain Score',
      'hi': '',
      'mr': '',
    },
    '6skw9lhj': {
      'en': 'End of life care ',
      'hi': '',
      'mr': '',
    },
    'ljpu0od0': {
      'en': 'Opioids and titration',
      'hi': '',
      'mr': '',
    },
    'yk5oqc2w': {
      'en': 'Breathlessness',
      'hi': '',
      'mr': '',
    },
    'tqgrgagk': {
      'en': 'Remission',
      'hi': '',
      'mr': '',
    },
    '8evt0wek': {
      'en': 'Bleeding',
      'hi': '',
      'mr': '',
    },
    '8ni8b3xo': {
      'en': 'Restlessness',
      'hi': '',
      'mr': '',
    },
    'gev3nljt': {
      'en': 'End of life care',
      'hi': '',
      'mr': '',
    },
    'wmoa7em3': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '4l4ox69x': {
      'en': 'Breathlessness',
      'hi': '',
      'mr': '',
    },
    '2yhij4a5': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'd108johx': {
      'en': 'Titration',
      'hi': '',
      'mr': '',
    },
    'ex47v7mx': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'w8ls15lr': {
      'en': 'Restlessness',
      'hi': '',
      'mr': '',
    },
    'ne1drwik': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'c9ckllq2': {
      'en': 'Remission',
      'hi': '',
      'mr': '',
    },
    'bfgfkd4h': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'd81nyc39': {
      'en': 'Clinically stable',
      'hi': '',
      'mr': '',
    },
    'gj6hmtac': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'xe89xvyl': {
      'en': 'Next',
      'hi': '',
      'mr': '',
    },
    'l3nfazme': {
      'en': 'Home',
      'hi': '',
      'mr': '',
    },
  },
  // NursingAssismentCopyCopy
  {
    '4fd5fu13': {
      'en': 'Nursing  assessment',
      'hi': '',
      'mr': '',
    },
    'vo5yufe6': {
      'en': 'Clinical',
      'hi': '',
      'mr': '',
    },
    'kl53keam': {
      'en': 'Bleeding',
      'hi': '',
      'mr': '',
    },
    'tq42ncn0': {
      'en': 'Breathlessness',
      'hi': '',
      'mr': '',
    },
    '3jbu1xvh': {
      'en': 'Remission',
      'hi': '',
      'mr': '',
    },
    'zip9ntje': {
      'en': 'Restlessness',
      'hi': '',
      'mr': '',
    },
    'rkmsy8jb': {
      'en': 'End of life care ',
      'hi': '',
      'mr': '',
    },
    'mii67w10': {
      'en': 'Opioids and titration',
      'hi': '',
      'mr': '',
    },
    '603y40ke': {
      'en': 'Pain Score',
      'hi': '',
      'mr': '',
    },
    'gacpibzr': {
      'en': 'ESAS Score',
      'hi': '',
      'mr': '',
    },
    '9zovl1wm': {
      'en': 'Update',
      'hi': '',
      'mr': '',
    },
    'lnexetfa': {
      'en': 'Nursing',
      'hi': '',
      'mr': '',
    },
    'vf6p2j47': {
      'en': 'Bedridden',
      'hi': '',
      'mr': '',
    },
    '583tya5d': {
      'en': 'Breathlessness',
      'hi': '',
      'mr': '',
    },
    'ojdf1qv6': {
      'en': 'Remission',
      'hi': '',
      'mr': '',
    },
    'bhmuifs4': {
      'en': 'Restlessness',
      'hi': '',
      'mr': '',
    },
    '7syo763q': {
      'en': 'WoundProgression',
      'hi': '',
      'mr': '',
    },
    '3edh4hv8': {
      'en': 'Opioids',
      'hi': '',
      'mr': '',
    },
    'eqrsz5db': {
      'en': 'Clinically stable',
      'hi': '',
      'mr': '',
    },
    'pu5iqkci': {
      'en': 'Opioids',
      'hi': '',
      'mr': '',
    },
    'enopf58i': {
      'en': 'Pain Score',
      'hi': '',
      'mr': '',
    },
    'faclquqm': {
      'en': 'ESAS Score',
      'hi': '',
      'mr': '',
    },
    'q46bxogo': {
      'en': 'Update\n',
      'hi': '',
      'mr': '',
    },
    'gukme8f5': {
      'en': 'Psychological',
      'hi': '',
      'mr': '',
    },
    'hkbkst20': {
      'en': 'Family wants BBN to patient ',
      'hi': '',
      'mr': '',
    },
    '152ipm5h': {
      'en': 'Family collusion that affects Goals of care ',
      'hi': '',
      'mr': '',
    },
    '0zgmzmk1': {
      'en': 'Distress thermometer',
      'hi': '',
      'mr': '',
    },
    's5j2zpan': {
      'en': 'PSP',
      'hi': '',
      'mr': '',
    },
    'q960zfpn': {
      'en': 'Update',
      'hi': '',
      'mr': '',
    },
    'cfjm0rl1': {
      'en': 'Clinical',
      'hi': '',
      'mr': '',
    },
    'tux1lj26': {
      'en': 'ESAS Score',
      'hi': '',
      'mr': '',
    },
    'mhvp4kpc': {
      'en': 'Pain Score',
      'hi': '',
      'mr': '',
    },
    'mde1aks5': {
      'en': 'Feeding Aassistance',
      'hi': '',
      'mr': '',
    },
    '4xouszc5': {
      'en': 'Opioids ',
      'hi': '',
      'mr': '',
    },
    'tmwf8146': {
      'en': 'Breathlessness',
      'hi': '',
      'mr': '',
    },
    'oxwar058': {
      'en': 'Wound progression',
      'hi': '',
      'mr': '',
    },
    '4544i709': {
      'en': 'Bleeding',
      'hi': '',
      'mr': '',
    },
    'gys5pxdh': {
      'en': 'Bedridden ',
      'hi': '',
      'mr': '',
    },
    'jhlm3z9q': {
      'en': 'Clinically stable ',
      'hi': '',
      'mr': '',
    },
    'ahmccpbx': {
      'en': 'Bedridden ',
      'hi': '',
      'mr': '',
    },
    'p5ovm8x7': {
      'en': 'Next',
      'hi': '',
      'mr': '',
    },
    'vnv3kdzh': {
      'en': 'Bleeding',
      'hi': '',
      'mr': '',
    },
    'mq7lrxvj': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'd1us1ad6': {
      'en': 'Breathlessness',
      'hi': '',
      'mr': '',
    },
    'w3rh9lft': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'nnk06npg': {
      'en': 'Bedridden',
      'hi': '',
      'mr': '',
    },
    'kceen2vn': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'a29sntny': {
      'en': 'Restlessness',
      'hi': '',
      'mr': '',
    },
    'p3383hf5': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'a91r02g8': {
      'en': 'Clinicaly stable',
      'hi': '',
      'mr': '',
    },
    'z3qh5bt8': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'k78ugoz1': {
      'en': 'Wound progression',
      'hi': '',
      'mr': '',
    },
    'k7u1jbhq': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'sy5hw921': {
      'en': 'Feeding assistance',
      'hi': '',
      'mr': '',
    },
    'zetyobtf': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '5kp5h9m0': {
      'en': 'On catheter stoma',
      'hi': '',
      'mr': '',
    },
    'as9n51cb': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '2tbggody': {
      'en': 'Home',
      'hi': '',
      'mr': '',
    },
  },
  // NursingAssesmentCopy
  {
    '0unv5sth': {
      'en': 'Nursing  assessment',
      'hi': '',
      'mr': '',
    },
    'j9ktd9xw': {
      'en': 'ESAS Score',
      'hi': '',
      'mr': '',
    },
    'n31thnuj': {
      'en': 'Pain Score',
      'hi': '',
      'mr': '',
    },
    '90m9ux1d': {
      'en': 'Feeding Aassistance',
      'hi': '',
      'mr': '',
    },
    'u7qdnxnl': {
      'en': 'Opioids ',
      'hi': '',
      'mr': '',
    },
    'v72r1ktz': {
      'en': 'Bleeding',
      'hi': '',
      'mr': '',
    },
    'uxjodr56': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'u7slidkn': {
      'en': 'Breathlessness',
      'hi': '',
      'mr': '',
    },
    'ya4lrpae': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'ib27wdpx': {
      'en': 'Bedridden',
      'hi': '',
      'mr': '',
    },
    'mmmke71e': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '56xn6y4l': {
      'en': 'Restlessness',
      'hi': '',
      'mr': '',
    },
    'n2whfuo0': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'pmne0ctj': {
      'en': 'Clinicaly stable',
      'hi': '',
      'mr': '',
    },
    '4yyjo18u': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    's9g61zcc': {
      'en': 'Wound progression',
      'hi': '',
      'mr': '',
    },
    'gz6ei9ll': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '4awkmm0u': {
      'en': 'Feeding assistance',
      'hi': '',
      'mr': '',
    },
    'vappi8se': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'vkap67io': {
      'en': 'On catheter stoma',
      'hi': '',
      'mr': '',
    },
    'jyydqldf': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '7lto3wvh': {
      'en': 'Next',
      'hi': '',
      'mr': '',
    },
    'o1x5pjne': {
      'en': 'Home',
      'hi': '',
      'mr': '',
    },
  },
  // NursingAssesment
  {
    '44kt2c89': {
      'en': '[Some hint text...]',
      'hi': '[कुछ संकेत पाठ...]',
      'mr': '[काही संकेत मजकूर...]',
    },
    'grkn7m00': {
      'en': '       Clinial',
      'hi': 'क्लिनिकल',
      'mr': 'क्लिनिकल',
    },
    'gjtld041': {
      'en': '[Some hint text...]',
      'hi': '[कुछ संकेत पाठ...]',
      'mr': '[काही संकेत मजकूर...]',
    },
    '2x4qgq69': {
      'en': ' Nursing',
      'hi': 'नर्सिंग',
      'mr': 'नर्सिंग',
    },
    '0x7i4pbl': {
      'en': ' Psychological',
      'hi': 'मनोवैज्ञानिक',
      'mr': 'मानसशास्त्रीय',
    },
    'k89xy3dd': {
      'en': 'Pain Score',
      'hi': 'दर्द स्कोर',
      'mr': 'वेदना स्कोअर',
    },
    'djxzx900': {
      'en': 'ESAS Score',
      'hi': 'ईएसएएस स्कोर',
      'mr': 'ESAS स्कोअर',
    },
    'jmaae9go': {
      'en': 'Bleeding',
      'hi': 'सांस फूलना',
      'mr': 'धाप लागणे',
    },
    '8otbxewm': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '91t8w9he': {
      'en': 'Breathlessness',
      'hi': 'सांस फूलना',
      'mr': 'धाप लागणे',
    },
    'p9kkapny': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'ohe3ry6s': {
      'en': 'Bedridden',
      'hi': 'बिस्तर पर जकड़ा हुआ',
      'mr': 'अंथरुणाला खिळून',
    },
    'hcdyff6l': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '79uhj58x': {
      'en': 'Restlessness',
      'hi': 'बेचैनी',
      'mr': 'अस्वस्थता',
    },
    '0gi6oywy': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '3yi0gl06': {
      'en': 'Clinicaly stable',
      'hi': 'चिकित्सकीय रूप से स्थिर',
      'mr': 'वैद्यकीयदृष्ट्या स्थिर',
    },
    'y0j1pv1u': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'gr47ufba': {
      'en': 'Wound progression',
      'hi': 'घाव की प्रगति',
      'mr': 'जखम प्रगती',
    },
    'p7yrisun': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'pgo88pa8': {
      'en': 'Feeding assistance',
      'hi': 'भोजन सहायता',
      'mr': 'आहार सहाय्य',
    },
    'llzk6ads': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'mf97eq0r': {
      'en': 'On catheter stoma',
      'hi': 'कैथेटर रंध्र पर',
      'mr': 'कॅथेटर स्टोमा वर',
    },
    '16czi4fn': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'gehmrv5z': {
      'en': 'Next',
      'hi': 'अगला',
      'mr': 'पुढे',
    },
    'thybuh98': {
      'en': 'Assesment',
      'hi': 'आकलन',
      'mr': 'मूल्यांकन',
    },
    'as7v69ti': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुख्यपृष्ठ',
    },
  },
  // PsychologicalAssesment
  {
    '2nul2oy6': {
      'en': '[Some hint text...]',
      'hi': '[कुछ संकेत पाठ...]',
      'mr': '[काही संकेत मजकूर...]',
    },
    'u464kzh5': {
      'en': '       Clinial',
      'hi': 'क्लिनिकल',
      'mr': 'क्लिनिकल',
    },
    'hqyvehky': {
      'en': '[Some hint text...]',
      'hi': '[कुछ संकेत पाठ...]',
      'mr': '[काही संकेत मजकूर...]',
    },
    '2rmkvohw': {
      'en': '  Nursing',
      'hi': 'नर्सिंग',
      'mr': 'नर्सिंग',
    },
    'yj43xm4h': {
      'en': 'Psychological',
      'hi': 'मनोवैज्ञानिक',
      'mr': 'मानसशास्त्रीय',
    },
    '8iuqbzuf': {
      'en': 'Distress thermometer',
      'hi': 'संकट थर्मामीटर',
      'mr': 'त्रास थर्मामीटर',
    },
    'hiksrhxu': {
      'en': 'Family wants BBN to patient',
      'hi': 'परिवार चाहता है कि बीबीएन मरीज को मिले',
      'mr': 'कुटुंबाला रुग्णाला बीबीएन हवे आहे',
    },
    '8lxxxgo0': {
      'en': 'Family colusion that affects goal of health',
      'hi': 'पारिवारिक गठबंधन जो स्वास्थ्य के लक्ष्य को प्रभावित करता है',
      'mr': 'कौटुंबिक संगनमताने आरोग्याच्या ध्येयावर परिणाम होतो',
    },
    'hw1mcqxn': {
      'en': 'Submit',
      'hi': 'प्रस्तुत करना',
      'mr': 'प्रस्तुत करणे',
    },
    'rka8rpgr': {
      'en': 'Assesment',
      'hi': 'आकलन',
      'mr': 'मूल्यांकन',
    },
    'kgv6fa4r': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुख्यपृष्ठ',
    },
  },
  // highPriorityCasesCopy
  {
    'uy0im6rm': {
      'en': 'Patient Id',
      'hi': '',
      'mr': '',
    },
    'yn5t5yg6': {
      'en': 'Patient Name',
      'hi': '',
      'mr': '',
    },
    'zvmmo1l9': {
      'en': 'Examined By',
      'hi': '',
      'mr': '',
    },
    'vmqp5p5a': {
      'en': 'Date',
      'hi': '',
      'mr': '',
    },
    'k6nlmelr': {
      'en': 'Action',
      'hi': '',
      'mr': '',
    },
    'ljkgnf1w': {
      'en': 'Schedule Visit',
      'hi': '',
      'mr': '',
    },
    'guz7ysp2': {
      'en': 'High Priority Cases',
      'hi': '',
      'mr': '',
    },
    'g7w0mm2e': {
      'en': 'Home',
      'hi': '',
      'mr': '',
    },
  },
  // UserDashboardCopy
  {
    'yk1mj2rv': {
      'en': 'Upcoming Appointments',
      'hi': '',
      'mr': '',
    },
    '6fz4fn9q': {
      'en': 'Please find your appointments',
      'hi': '',
      'mr': '',
    },
    'r34be1r6': {
      'en': 'Patient ID',
      'hi': '',
      'mr': '',
    },
    'ddb9umoj': {
      'en': 'Created on',
      'hi': '',
      'mr': '',
    },
    '7qe7tznf': {
      'en': 'Priority',
      'hi': '',
      'mr': '',
    },
    '78egfjk5': {
      'en': 'Status',
      'hi': '',
      'mr': '',
    },
    'e2040z8x': {
      'en': 'Past Appointments',
      'hi': '',
      'mr': '',
    },
    'jpzlk2fl': {
      'en': 'Please find your past appointments',
      'hi': '',
      'mr': '',
    },
    'o0jaauv3': {
      'en': 'pt ID',
      'hi': '',
      'mr': '',
    },
    'rklsb84y': {
      'en': 'Created on',
      'hi': '',
      'mr': '',
    },
    'zidjkzxb': {
      'en': 'Priority',
      'hi': '',
      'mr': '',
    },
    'si41okr7': {
      'en': 'Status',
      'hi': '',
      'mr': '',
    },
    'wzhmypbg': {
      'en': 'User Dashboard',
      'hi': '',
      'mr': '',
    },
    'mvx7cawi': {
      'en': 'Shop',
      'hi': '',
      'mr': '',
    },
  },
  // visitScheduling
  {
    'dynlqr2g': {
      'en': 'Schedule Visit',
      'hi': 'शेड्यूल विजिट',
      'mr': 'भेटीचे वेळापत्रक',
    },
    'aviltmkm': {
      'en': 'Select Doctor',
      'hi': 'डॉक्टर का चयन करें',
      'mr': 'डॉक्टर निवडा',
    },
    'qbtwox5i': {
      'en': 'Option 1',
      'hi': 'विकल्प 1',
      'mr': 'पर्याय 1',
    },
    'ctj80vbj': {
      'en': 'Please select...',
      'hi': 'कृपया चुने...',
      'mr': 'कृपया निवडा...',
    },
    'u0714x0s': {
      'en': 'Select Nurse',
      'hi': 'नर्स का चयन करें',
      'mr': 'नर्स निवडा',
    },
    '1xdebd6l': {
      'en': 'Option 1',
      'hi': 'विकल्प 1',
      'mr': 'पर्याय 1',
    },
    'p6o0ep90': {
      'en': 'Please select...',
      'hi': 'कृपया चुने...',
      'mr': 'कृपया निवडा...',
    },
    'ewajvq9l': {
      'en': 'Select MSW',
      'hi': 'एमएसडब्ल्यू का चयन करें',
      'mr': 'MSW निवडा',
    },
    'fhojn25x': {
      'en': 'Option 1',
      'hi': 'विकल्प 1',
      'mr': 'पर्याय 1',
    },
    '062mkvsg': {
      'en': 'Please select...',
      'hi': 'कृपया चुने...',
      'mr': 'कृपया निवडा...',
    },
    'dr7r2nxw': {
      'en': 'Submit',
      'hi': 'प्रस्तुत करना',
      'mr': 'प्रस्तुत करणे',
    },
    'oneqjscc': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुख्यपृष्ठ',
    },
  },
  // UserDashboardCopyCopy
  {
    '8f0z8kr6': {
      'en': 'Upcoming Appointments',
      'hi': 'आगामी नियुक्तियां',
      'mr': 'आगामी भेटी',
    },
    '61t83bot': {
      'en': 'Patient ID',
      'hi': 'रोगी आईडी',
      'mr': 'पेशंट आयडी',
    },
    'c8qcbxgt': {
      'en': 'Created on',
      'hi': 'पर बनाया',
      'mr': 'रोजी तयार केले',
    },
    'u85064dy': {
      'en': 'Priority',
      'hi': 'वरीयता',
      'mr': 'प्राधान्य',
    },
    'cctbcnsj': {
      'en': 'Status',
      'hi': 'दर्जा',
      'mr': 'स्थिती',
    },
    '2ptvajur': {
      'en': 'Scheduled at',
      'hi': 'पर अनुसूचित',
      'mr': 'येथे अनुसूचित',
    },
    'j096zudd': {
      'en': 'Past Appointments',
      'hi': 'पिछली नियुक्तियां',
      'mr': 'मागील भेटी',
    },
    'cn0rshm8': {
      'en': 'Patient ID',
      'hi': 'रोगी आईडी',
      'mr': 'पेशंट आयडी',
    },
    'l8dbdcwp': {
      'en': 'Created on',
      'hi': 'पर बनाया',
      'mr': 'रोजी तयार केले',
    },
    '6jqljo1w': {
      'en': 'Priority',
      'hi': 'वरीयता',
      'mr': 'प्राधान्य',
    },
    'mffsvxmz': {
      'en': 'Status',
      'hi': 'दर्जा',
      'mr': 'स्थिती',
    },
    'a0hvtszv': {
      'en': 'User Dashboard',
      'hi': 'उपयोगकर्ता डैशबोर्ड',
      'mr': 'वापरकर्ता डॅशबोर्ड',
    },
    'bjatj1op': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुख्यपृष्ठ',
    },
    'q68zboyp': {
      'en': 'Setting',
      'hi': 'स्थापना',
      'mr': 'सेटिंग',
    },
    'dhnj2lpx': {
      'en': 'LogOut',
      'hi': 'स्थापना',
      'mr': 'सेटिंग',
    },
    'bhykyfvi': {
      'en': 'Shop',
      'hi': 'दुकान',
      'mr': 'दुकान',
    },
  },
  // NursingAssesmentCopy2
  {
    'drn6z6hv': {
      'en': '[Some hint text...]',
      'hi': '',
      'mr': '',
    },
    'ma7jj1j1': {
      'en': '       Clinial',
      'hi': '',
      'mr': '',
    },
    '0boy9lqd': {
      'en': '[Some hint text...]',
      'hi': '',
      'mr': '',
    },
    'mpbzpyb2': {
      'en': '  Nursing',
      'hi': '',
      'mr': '',
    },
    '2104fc6y': {
      'en': '  Psychological',
      'hi': '',
      'mr': '',
    },
    'pvouofsv': {
      'en': 'Pain Score',
      'hi': '',
      'mr': '',
    },
    'l31f6lab': {
      'en': 'ESAS Score',
      'hi': '',
      'mr': '',
    },
    '8cpcv6ht': {
      'en': 'Bleeding',
      'hi': '',
      'mr': '',
    },
    '6okdxa0x': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '4y42oplt': {
      'en': 'Breathlessness',
      'hi': '',
      'mr': '',
    },
    'a6euwr0c': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'izkcurny': {
      'en': 'Bedridden',
      'hi': '',
      'mr': '',
    },
    'n3xadua1': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'g04lr4gq': {
      'en': 'Restlessness',
      'hi': '',
      'mr': '',
    },
    '1wynznia': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'k3x4yp2b': {
      'en': 'Clinicaly stable',
      'hi': '',
      'mr': '',
    },
    'd8nrnu97': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'n4ppuiy5': {
      'en': 'Wound progression',
      'hi': '',
      'mr': '',
    },
    '8knqqhpv': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '7dssppyx': {
      'en': 'Feeding assistance',
      'hi': '',
      'mr': '',
    },
    'tyoh8gjt': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'xnvp6zcq': {
      'en': 'On catheter stoma',
      'hi': '',
      'mr': '',
    },
    'twuge52b': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'k7leqcpv': {
      'en': 'Next',
      'hi': '',
      'mr': '',
    },
    'dap8ylf2': {
      'en': 'Nursing assesment',
      'hi': '',
      'mr': '',
    },
    'tpggknvq': {
      'en': 'Home',
      'hi': '',
      'mr': '',
    },
  },
  // casesOnProvision
  {
    'mrm0i3ma': {
      'en': 'Cases on Provision',
      'hi': 'प्रावधान पर मामले',
      'mr': 'तरतुदीवरील प्रकरणे',
    },
    'p01pl9f4': {
      'en': 'Patient Id',
      'hi': 'रोगी आईडी',
      'mr': 'पेशंट आयडी',
    },
    '04pr18nd': {
      'en': 'Patient Name',
      'hi': 'रोगी का नाम',
      'mr': 'रुग्णाचे नाव',
    },
    'b5tbkui4': {
      'en': 'Assigned To',
      'hi': 'को सौंपना',
      'mr': 'नियुक्त',
    },
    'o22vulan': {
      'en': 'Date',
      'hi': 'दिनांक',
      'mr': 'तारीख',
    },
    'vnii71a3': {
      'en': 'Action',
      'hi': 'गतिविधि',
      'mr': 'कृती',
    },
    '8n1yuwa3': {
      'en': 'Send Reminder',
      'hi': 'याद दिलाना',
      'mr': 'स्मरणपत्र पाठवा',
    },
    'jbexi3vk': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुख्यपृष्ठ',
    },
  },
  // mediumPriorityCases
  {
    'b0ctks2m': {
      'en': 'Patient Id',
      'hi': 'रोगी आईडी',
      'mr': 'पेशंट आयडी',
    },
    'vo7t5k9r': {
      'en': 'Patient Name',
      'hi': 'रोगी का नाम',
      'mr': 'रुग्णाचे नाव',
    },
    '3a53ofe4': {
      'en': 'Examined By',
      'hi': 'द्वारा जांचा गया',
      'mr': 'यांनी तपासले',
    },
    'cjt5g2mh': {
      'en': 'Date',
      'hi': 'दिनांक',
      'mr': 'तारीख',
    },
    '9d1kb9v0': {
      'en': 'Action',
      'hi': 'गतिविधि',
      'mr': 'कृती',
    },
    '11id9nph': {
      'en': 'Schedule Visit',
      'hi': 'शेड्यूल विजिट',
      'mr': 'भेटीचे वेळापत्रक',
    },
    '4vbi5pjj': {
      'en': 'Medium Priority Cases',
      'hi': 'मध्यम प्राथमिकता वाले मामले',
      'mr': 'मध्यम प्राधान्य प्रकरणे',
    },
    'eqeyzhqq': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुख्यपृष्ठ',
    },
  },
  // lowPriorityCases
  {
    '1r4vlaxi': {
      'en': 'Patient Id',
      'hi': 'रोगी आईडी',
      'mr': 'पेशंट आयडी',
    },
    'pvxmfkbo': {
      'en': 'Patient Name',
      'hi': 'रोगी का नाम',
      'mr': 'रुग्णाचे नाव',
    },
    'qazcnptv': {
      'en': 'Examined By',
      'hi': 'द्वारा जांचा गया',
      'mr': 'यांनी तपासले',
    },
    'd7wwe8pu': {
      'en': 'Date',
      'hi': 'दिनांक',
      'mr': 'तारीख',
    },
    'chfw4gf9': {
      'en': 'Action',
      'hi': 'गतिविधि',
      'mr': 'कृती',
    },
    'dchbnsxk': {
      'en': 'Schedule Visit',
      'hi': 'शेड्यूल विजिट',
      'mr': 'भेटीचे वेळापत्रक',
    },
    'b2qk4gb1': {
      'en': 'Low Priority Cases',
      'hi': 'कम प्राथमिकता वाले मामले',
      'mr': 'कमी प्राधान्य प्रकरणे',
    },
    '3dcgvvs4': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुख्यपृष्ठ',
    },
  },
  // scheduledVisits
  {
    'zf6y1f5s': {
      'en': 'Scheduled Visits',
      'hi': 'प्रावधान पर मामले',
      'mr': 'तरतुदीवरील प्रकरणे',
    },
    'mjke6zga': {
      'en': 'Patient Id',
      'hi': 'रोगी आईडी',
      'mr': 'पेशंट आयडी',
    },
    'wf6w5x1q': {
      'en': 'Patient Name',
      'hi': 'रोगी का नाम',
      'mr': 'रुग्णाचे नाव',
    },
    'g2xa1578': {
      'en': 'Assigned To',
      'hi': 'को सौंपना',
      'mr': 'नियुक्त',
    },
    '1gouysnv': {
      'en': 'Date',
      'hi': 'दिनांक',
      'mr': 'तारीख',
    },
    'wqtfsk93': {
      'en': 'Action',
      'hi': 'गतिविधि',
      'mr': 'कृती',
    },
    '1p3v0fuz': {
      'en': 'Send Reminder',
      'hi': 'याद दिलाना',
      'mr': 'स्मरणपत्र पाठवा',
    },
    'h5z16mdf': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुख्यपृष्ठ',
    },
  },
  // Admin_DashBoard
  {
    'm94vs0cj': {
      'en': 'Admin Dashboard',
      'hi': '',
      'mr': '',
    },
    '9lnjs30t': {
      'en': 'Add User',
      'hi': 'उपयोगकर्ता जोड़ें',
      'mr': 'वापरकर्ता जोडा',
    },
    'l4bczbf3': {
      'en': 'Please fill the user details',
      'hi': 'कृपया उपयोगकर्ता विवरण भरें',
      'mr': 'कृपया वापरकर्ता तपशील भरा',
    },
    'lzfknzmb': {
      'en': 'Role:-   ',
      'hi': 'भूमिका:-',
      'mr': 'भूमिका:-',
    },
    '21hy1mxm': {
      'en': 'Doctor',
      'hi': 'चिकित्सक',
      'mr': 'डॉक्टर',
    },
    'kaq7tk5f': {
      'en': 'Nurse',
      'hi': 'देखभाल करना',
      'mr': 'नर्स',
    },
    'btdm6p9j': {
      'en': 'MSW',
      'hi': 'एमएसडब्ल्यू',
      'mr': 'एमएसडब्ल्यू',
    },
    'oa81081t': {
      'en': 'Patient',
      'hi': 'मरीज़',
      'mr': 'पेशंट',
    },
    'qytk89u6': {
      'en': 'Admin',
      'hi': 'व्यवस्थापक',
      'mr': 'अॅडमिन',
    },
    'kz5gxg25': {
      'en': 'Please select...',
      'hi': 'कृपया चुने...',
      'mr': 'कृपया निवडा...',
    },
    'km041ypr': {
      'en': 'Compass:-   ',
      'hi': 'दिशा सूचक यंत्र:-',
      'mr': 'होकायंत्र:-',
    },
    '3i98z7cv': {
      'en': 'East',
      'hi': 'पूर्व',
      'mr': 'पूर्व',
    },
    'keidx2dp': {
      'en': 'West',
      'hi': 'पश्चिम',
      'mr': 'पश्चिम',
    },
    'jqb729u8': {
      'en': 'North',
      'hi': 'उत्तर',
      'mr': 'उत्तर',
    },
    '4wfzok5q': {
      'en': 'South',
      'hi': 'दक्षिण',
      'mr': 'दक्षिण',
    },
    '7niirduo': {
      'en': 'Please select...',
      'hi': 'कृपया चुने...',
      'mr': 'कृपया निवडा...',
    },
    'pj767qwy': {
      'en': 'Enter your First Name',
      'hi': 'अपना पहला नाम दर्ज करें',
      'mr': 'आपले प्रथम नाव प्रविष्ट करा',
    },
    'zb1817j8': {
      'en': 'Enter your Last Name',
      'hi': 'अपना अंतिम नाम दर्ज करें',
      'mr': 'तुमचे आडनाव एंटर करा',
    },
    '2o9m7b0v': {
      'en': 'Enter your Phone Number',
      'hi': 'अपना दूरभाष क्रमांक दर्ज करें',
      'mr': 'तुमचा फोन नंबर टाका',
    },
    'whumwne3': {
      'en': 'Enter your Email',
      'hi': 'अपना ईमेल दर्ज करें',
      'mr': 'तुमचा ईमेल टाका',
    },
    'vz6ocw2b': {
      'en': 'Password',
      'hi': 'पासवर्ड',
      'mr': 'पासवर्ड',
    },
    'e6td1z21': {
      'en': 'Confirm Password',
      'hi': 'पासवर्ड की पुष्टि कीजिये',
      'mr': 'पासवर्डची पुष्टी करा',
    },
    'gmtktl2g': {
      'en': 'Address: ',
      'hi': 'पता:',
      'mr': 'पत्ता:',
    },
    '6xro8tcm': {
      'en': 'State',
      'hi': 'राज्य',
      'mr': 'राज्य',
    },
    'zqx8zx5y': {
      'en': 'City',
      'hi': 'शहर',
      'mr': 'शहर',
    },
    'f7t97ye8': {
      'en': 'Street',
      'hi': 'सड़क',
      'mr': 'रस्ता',
    },
    'ksgj63uw': {
      'en': 'Pincode',
      'hi': 'पिन कोड',
      'mr': 'पिन कोड',
    },
    '71kpi35n': {
      'en': 'Add',
      'hi': 'जोड़ें',
      'mr': 'अॅड',
    },
    '5h4ko6nf': {
      'en': 'Create a Case',
      'hi': 'केस बनाएं',
      'mr': 'केस तयार करा',
    },
    'avm2hxag': {
      'en': 'Select Doctor',
      'hi': 'डॉक्टर का चयन करें',
      'mr': 'डॉक्टर निवडा',
    },
    'rociao9w': {
      'en': 'Please select...',
      'hi': 'कृपया चुने...',
      'mr': 'कृपया निवडा...',
    },
    'eirnbwwz': {
      'en': 'Select Patient',
      'hi': 'रोगी का चयन करें',
      'mr': 'पेशंट निवडा',
    },
    'ylb7gurm': {
      'en': 'Option 1',
      'hi': 'विकल्प 1',
      'mr': 'पर्याय 1',
    },
    'ejiygvu8': {
      'en': 'Please select...',
      'hi': 'कृपया चुने...',
      'mr': 'कृपया निवडा...',
    },
    'cb63yepo': {
      'en': 'Submit',
      'hi': 'प्रस्तुत करना',
      'mr': 'प्रस्तुत करणे',
    },
    'v8wtgyj3': {
      'en': 'Case Dashboard',
      'hi': 'केस डैशबोर्ड',
      'mr': 'केस डॅशबोर्ड',
    },
    'yrcy3bip': {
      'en': 'High Priority Cases',
      'hi': 'उच्च प्राथमिकता वाले मामले',
      'mr': 'उच्च प्राधान्य प्रकरणे',
    },
    'kpe0r155': {
      'en': 'Medium Priority Cases',
      'hi': 'मध्यम प्राथमिकता वाले मामले',
      'mr': 'मध्यम प्राधान्य प्रकरणे',
    },
    'jt0j45o8': {
      'en': 'Low Priority Cases',
      'hi': 'कम प्राथमिकता वाले मामले',
      'mr': 'कमी प्राधान्य प्रकरणे',
    },
    '4k4ou3ic': {
      'en': 'Scheduled Visits',
      'hi': 'अनुसूचित दौरे',
      'mr': 'नियोजित भेटी',
    },
    '9q6vfbhl': {
      'en': 'Cases on Provision',
      'hi': 'पिछले दौरे',
      'mr': 'मागील भेटी',
    },
    '5zpb328k': {
      'en': 'Home',
      'hi': '',
      'mr': '',
    },
  },
  // priority
  {
    'bor345y4': {
      'en': 'Choose Category',
      'hi': 'वर्ग चुने',
      'mr': 'श्रेणी निवडा',
    },
    'cjm5oxd9': {
      'en': 'High',
      'hi': 'High',
      'mr': 'High',
    },
    '5rphxpn7': {
      'en': 'Medium',
      'hi': 'Medium',
      'mr': 'Medium',
    },
    'wi7fv31a': {
      'en': 'Low',
      'hi': 'Low',
      'mr': 'Low',
    },
    'phnl435w': {
      'en': 'Please select  priority',
      'hi': 'कृपया प्राथमिकता चुनें',
      'mr': 'कृपया प्राधान्य निवडा',
    },
    'g2ri3p7v': {
      'en': 'Comment',
      'hi': 'टिप्पणी',
      'mr': 'टिप्पणी',
    },
    'uayvywtv': {
      'en': 'Submit',
      'hi': 'प्रस्तुत करना',
      'mr': 'प्रस्तुत करणे',
    },
  },
  // web_nav
  {
    'ltu8jrgr': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुख्यपृष्ठ',
    },
    'zyiovhbn': {
      'en': 'Setting',
      'hi': 'स्थापना',
      'mr': 'सेटिंग',
    },
    '2patmb6d': {
      'en': 'LogOut',
      'hi': 'स्थापना',
      'mr': 'सेटिंग',
    },
  },
  // mobile_nav
  {
    'mfk59q71': {
      'en': 'Home',
      'hi': '',
      'mr': '',
    },
    '9b7n82c2': {
      'en': 'setting',
      'hi': '',
      'mr': '',
    },
  },
  // priorityCopy
  {
    'atnrag9k': {
      'en': 'Select Language',
      'hi': '',
      'mr': '',
    },
    'qau2q396': {
      'en': 'Button',
      'hi': '',
      'mr': '',
    },
  },
  // selectlanguage
  {
    'cbucuxck': {
      'en': 'Select  Language',
      'hi': 'भाषा चुने',
      'mr': 'भाषा निवडा',
    },
  },
  // Miscellaneous
  {
    'p7cbyno0': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'gbt1n3tu': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '9n4mcy6r': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'nt3jfrqa': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'mevpcxql': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'cek55ly5': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '7pkko351': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'p0z3pyll': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'viqwi72u': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'zpg9pjzz': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'ab4f17f3': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'rowqp0if': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'rxt0csta': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'kyny9nlj': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'dj4qa6nk': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'c4pge08q': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'syr82rxc': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'p7cjkhr6': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'cwzejt3x': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'l9586jq4': {
      'en': '',
      'hi': '',
      'mr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
