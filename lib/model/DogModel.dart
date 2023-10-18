/// message : {"affenpinscher":[],"african":[],"airedale":[],"akita":[],"appenzeller":[],"australian":["shepherd"],"basenji":[],"beagle":[],"bluetick":[],"borzoi":[],"bouvier":[],"boxer":[],"brabancon":[],"briard":[],"buhund":["norwegian"],"bulldog":["boston","english","french"],"bullterrier":["staffordshire"],"cattledog":["australian"],"cavapoo":[],"chihuahua":[],"chow":[],"clumber":[],"cockapoo":[],"collie":["border"],"coonhound":[],"corgi":["cardigan"],"cotondetulear":[],"dachshund":[],"dalmatian":[],"dane":["great"],"deerhound":["scottish"],"dhole":[],"dingo":[],"doberman":[],"elkhound":["norwegian"],"entlebucher":[],"eskimo":[],"finnish":["lapphund"],"frise":["bichon"],"germanshepherd":[],"greyhound":["italian"],"groenendael":[],"havanese":[],"hound":["afghan","basset","blood","english","ibizan","plott","walker"],"husky":[],"keeshond":[],"kelpie":[],"komondor":[],"kuvasz":[],"labradoodle":[],"labrador":[],"leonberg":[],"lhasa":[],"malamute":[],"malinois":[],"maltese":[],"mastiff":["bull","english","tibetan"],"mexicanhairless":[],"mix":[],"mountain":["bernese","swiss"],"newfoundland":[],"otterhound":[],"ovcharka":["caucasian"],"papillon":[],"pekinese":[],"pembroke":[],"pinscher":["miniature"],"pitbull":[],"pointer":["german","germanlonghair"],"pomeranian":[],"poodle":["medium","miniature","standard","toy"],"pug":[],"puggle":[],"pyrenees":[],"redbone":[],"retriever":["chesapeake","curly","flatcoated","golden"],"ridgeback":["rhodesian"],"rottweiler":[],"saluki":[],"samoyed":[],"schipperke":[],"schnauzer":["giant","miniature"],"segugio":["italian"],"setter":["english","gordon","irish"],"sharpei":[],"sheepdog":["english","shetland"],"shiba":[],"shihtzu":[],"spaniel":["blenheim","brittany","cocker","irish","japanese","sussex","welsh"],"spitz":["japanese"],"springer":["english"],"stbernard":[],"terrier":["american","australian","bedlington","border","cairn","dandie","fox","irish","kerryblue","lakeland","norfolk","norwich","patterdale","russell","scottish","sealyham","silky","tibetan","toy","welsh","westhighland","wheaten","yorkshire"],"tervuren":[],"vizsla":[],"waterdog":["spanish"],"weimaraner":[],"whippet":[],"wolfhound":["irish"]}
/// status : "success"

class DogModel {
  DogModel({
      Message? message, 
      String? status,}){
    _message = message;
    _status = status;
}

  DogModel.fromJson(dynamic json) {
    _message = json['message'] != null ? Message.fromJson(json['message']) : null;
    _status = json['status'];
  }
  Message? _message;
  String? _status;
DogModel copyWith({  Message? message,
  String? status,
}) => DogModel(  message: message ?? _message,
  status: status ?? _status,
);
  Message? get message => _message;
  String? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_message != null) {
      map['message'] = _message?.toJson();
    }
    map['status'] = _status;
    return map;
  }

}

/// affenpinscher : []
/// african : []
/// airedale : []
/// akita : []
/// appenzeller : []
/// australian : ["shepherd"]
/// basenji : []
/// beagle : []
/// bluetick : []
/// borzoi : []
/// bouvier : []
/// boxer : []
/// brabancon : []
/// briard : []
/// buhund : ["norwegian"]
/// bulldog : ["boston","english","french"]
/// bullterrier : ["staffordshire"]
/// cattledog : ["australian"]
/// cavapoo : []
/// chihuahua : []
/// chow : []
/// clumber : []
/// cockapoo : []
/// collie : ["border"]
/// coonhound : []
/// corgi : ["cardigan"]
/// cotondetulear : []
/// dachshund : []
/// dalmatian : []
/// dane : ["great"]
/// deerhound : ["scottish"]
/// dhole : []
/// dingo : []
/// doberman : []
/// elkhound : ["norwegian"]
/// entlebucher : []
/// eskimo : []
/// finnish : ["lapphund"]
/// frise : ["bichon"]
/// germanshepherd : []
/// greyhound : ["italian"]
/// groenendael : []
/// havanese : []
/// hound : ["afghan","basset","blood","english","ibizan","plott","walker"]
/// husky : []
/// keeshond : []
/// kelpie : []
/// komondor : []
/// kuvasz : []
/// labradoodle : []
/// labrador : []
/// leonberg : []
/// lhasa : []
/// malamute : []
/// malinois : []
/// maltese : []
/// mastiff : ["bull","english","tibetan"]
/// mexicanhairless : []
/// mix : []
/// mountain : ["bernese","swiss"]
/// newfoundland : []
/// otterhound : []
/// ovcharka : ["caucasian"]
/// papillon : []
/// pekinese : []
/// pembroke : []
/// pinscher : ["miniature"]
/// pitbull : []
/// pointer : ["german","germanlonghair"]
/// pomeranian : []
/// poodle : ["medium","miniature","standard","toy"]
/// pug : []
/// puggle : []
/// pyrenees : []
/// redbone : []
/// retriever : ["chesapeake","curly","flatcoated","golden"]
/// ridgeback : ["rhodesian"]
/// rottweiler : []
/// saluki : []
/// samoyed : []
/// schipperke : []
/// schnauzer : ["giant","miniature"]
/// segugio : ["italian"]
/// setter : ["english","gordon","irish"]
/// sharpei : []
/// sheepdog : ["english","shetland"]
/// shiba : []
/// shihtzu : []
/// spaniel : ["blenheim","brittany","cocker","irish","japanese","sussex","welsh"]
/// spitz : ["japanese"]
/// springer : ["english"]
/// stbernard : []
/// terrier : ["american","australian","bedlington","border","cairn","dandie","fox","irish","kerryblue","lakeland","norfolk","norwich","patterdale","russell","scottish","sealyham","silky","tibetan","toy","welsh","westhighland","wheaten","yorkshire"]
/// tervuren : []
/// vizsla : []
/// waterdog : ["spanish"]
/// weimaraner : []
/// whippet : []
/// wolfhound : ["irish"]

class Message {
  Message({
      List<dynamic>? affenpinscher,
      List<dynamic>? african, 
      List<dynamic>? airedale, 
      List<dynamic>? akita, 
      List<dynamic>? appenzeller, 
      List<String>? australian,
      List<dynamic>? basenji, 
      List<dynamic>? beagle, 
      List<dynamic>? bluetick, 
      List<dynamic>? borzoi, 
      List<dynamic>? bouvier, 
      List<dynamic>? boxer, 
      List<dynamic>? brabancon, 
      List<dynamic>? briard, 
      List<String>? buhund,
      List<String>? bulldog,
      List<String>? bullterrier,
      List<String>? cattledog,
      List<dynamic>? cavapoo, 
      List<dynamic>? chihuahua, 
      List<dynamic>? chow, 
      List<dynamic>? clumber, 
      List<dynamic>? cockapoo, 
      List<String>? collie,
      List<dynamic>? coonhound, 
      List<String>? corgi,
      List<dynamic>? cotondetulear, 
      List<dynamic>? dachshund, 
      List<dynamic>? dalmatian, 
      List<String>? dane,
      List<String>? deerhound,
      List<dynamic>? dhole, 
      List<dynamic>? dingo, 
      List<dynamic>? doberman, 
      List<String>? elkhound,
      List<dynamic>? entlebucher, 
      List<dynamic>? eskimo, 
      List<String>? finnish,
      List<String>? frise,
      List<dynamic>? germanshepherd, 
      List<String>? greyhound,
      List<dynamic>? groenendael, 
      List<dynamic>? havanese, 
      List<String>? hound,
      List<dynamic>? husky, 
      List<dynamic>? keeshond, 
      List<dynamic>? kelpie, 
      List<dynamic>? komondor, 
      List<dynamic>? kuvasz, 
      List<dynamic>? labradoodle, 
      List<dynamic>? labrador, 
      List<dynamic>? leonberg, 
      List<dynamic>? lhasa, 
      List<dynamic>? malamute, 
      List<dynamic>? malinois, 
      List<dynamic>? maltese, 
      List<String>? mastiff,
      List<dynamic>? mexicanhairless, 
      List<dynamic>? mix, 
      List<String>? mountain,
      List<dynamic>? newfoundland, 
      List<dynamic>? otterhound, 
      List<String>? ovcharka,
      List<dynamic>? papillon, 
      List<dynamic>? pekinese, 
      List<dynamic>? pembroke, 
      List<String>? pinscher,
      List<dynamic>? pitbull, 
      List<String>? pointer,
      List<dynamic>? pomeranian, 
      List<String>? poodle,
      List<dynamic>? pug, 
      List<dynamic>? puggle, 
      List<dynamic>? pyrenees, 
      List<dynamic>? redbone, 
      List<String>? retriever,
      List<String>? ridgeback,
      List<dynamic>? rottweiler, 
      List<dynamic>? saluki, 
      List<dynamic>? samoyed, 
      List<dynamic>? schipperke, 
      List<String>? schnauzer,
      List<String>? segugio,
      List<String>? setter,
      List<dynamic>? sharpei, 
      List<String>? sheepdog,
      List<dynamic>? shiba, 
      List<dynamic>? shihtzu, 
      List<String>? spaniel,
      List<String>? spitz,
      List<String>? springer,
      List<dynamic>? stbernard, 
      List<String>? terrier,
      List<dynamic>? tervuren, 
      List<dynamic>? vizsla, 
      List<String>? waterdog,
      List<dynamic>? weimaraner, 
      List<dynamic>? whippet, 
      List<String>? wolfhound,}){
    _affenpinscher = affenpinscher;
    _african = african;
    _airedale = airedale;
    _akita = akita;
    _appenzeller = appenzeller;
    _australian = australian;
    _basenji = basenji;
    _beagle = beagle;
    _bluetick = bluetick;
    _borzoi = borzoi;
    _bouvier = bouvier;
    _boxer = boxer;
    _brabancon = brabancon;
    _briard = briard;
    _buhund = buhund;
    _bulldog = bulldog;
    _bullterrier = bullterrier;
    _cattledog = cattledog;
    _cavapoo = cavapoo;
    _chihuahua = chihuahua;
    _chow = chow;
    _clumber = clumber;
    _cockapoo = cockapoo;
    _collie = collie;
    _coonhound = coonhound;
    _corgi = corgi;
    _cotondetulear = cotondetulear;
    _dachshund = dachshund;
    _dalmatian = dalmatian;
    _dane = dane;
    _deerhound = deerhound;
    _dhole = dhole;
    _dingo = dingo;
    _doberman = doberman;
    _elkhound = elkhound;
    _entlebucher = entlebucher;
    _eskimo = eskimo;
    _finnish = finnish;
    _frise = frise;
    _germanshepherd = germanshepherd;
    _greyhound = greyhound;
    _groenendael = groenendael;
    _havanese = havanese;
    _hound = hound;
    _husky = husky;
    _keeshond = keeshond;
    _kelpie = kelpie;
    _komondor = komondor;
    _kuvasz = kuvasz;
    _labradoodle = labradoodle;
    _labrador = labrador;
    _leonberg = leonberg;
    _lhasa = lhasa;
    _malamute = malamute;
    _malinois = malinois;
    _maltese = maltese;
    _mastiff = mastiff;
    _mexicanhairless = mexicanhairless;
    _mix = mix;
    _mountain = mountain;
    _newfoundland = newfoundland;
    _otterhound = otterhound;
    _ovcharka = ovcharka;
    _papillon = papillon;
    _pekinese = pekinese;
    _pembroke = pembroke;
    _pinscher = pinscher;
    _pitbull = pitbull;
    _pointer = pointer;
    _pomeranian = pomeranian;
    _poodle = poodle;
    _pug = pug;
    _puggle = puggle;
    _pyrenees = pyrenees;
    _redbone = redbone;
    _retriever = retriever;
    _ridgeback = ridgeback;
    _rottweiler = rottweiler;
    _saluki = saluki;
    _samoyed = samoyed;
    _schipperke = schipperke;
    _schnauzer = schnauzer;
    _segugio = segugio;
    _setter = setter;
    _sharpei = sharpei;
    _sheepdog = sheepdog;
    _shiba = shiba;
    _shihtzu = shihtzu;
    _spaniel = spaniel;
    _spitz = spitz;
    _springer = springer;
    _stbernard = stbernard;
    _terrier = terrier;
    _tervuren = tervuren;
    _vizsla = vizsla;
    _waterdog = waterdog;
    _weimaraner = weimaraner;
    _whippet = whippet;
    _wolfhound = wolfhound;
}

  Message.fromJson(dynamic json) {
    if (json['affenpinscher'] != null) {
      _affenpinscher = [];
      json['affenpinscher'].forEach((v) {
        _affenpinscher?.add(v);
      });
    }
    if (json['african'] != null) {
      _african = [];
      json['african'].forEach((v) {
        _african?.add(v);
      });
    }
    if (json['airedale'] != null) {
      _airedale = [];
      json['airedale'].forEach((v) {
        _airedale?.add(v);
      });
    }
    if (json['akita'] != null) {
      _akita = [];
      json['akita'].forEach((v) {
        _akita?.add(v);
      });
    }
    if (json['appenzeller'] != null) {
      _appenzeller = [];
      json['appenzeller'].forEach((v) {
        _appenzeller?.add(v);
      });
    }
    _australian = json['australian'] != null ? json['australian'].cast<String>() : [];
    if (json['basenji'] != null) {
      _basenji = [];
      json['basenji'].forEach((v) {
        _basenji?.add(v);
      });
    }
    if (json['beagle'] != null) {
      _beagle = [];
      json['beagle'].forEach((v) {
        _beagle?.add(v);
      });
    }
    if (json['bluetick'] != null) {
      _bluetick = [];
      json['bluetick'].forEach((v) {
        _bluetick?.add(v);
      });
    }
    if (json['borzoi'] != null) {
      _borzoi = [];
      json['borzoi'].forEach((v) {
        _borzoi?.add(v);
      });
    }
    if (json['bouvier'] != null) {
      _bouvier = [];
      json['bouvier'].forEach((v) {
        _bouvier?.add(v);
      });
    }
    if (json['boxer'] != null) {
      _boxer = [];
      json['boxer'].forEach((v) {
        _boxer?.add(v);
      });
    }
    if (json['brabancon'] != null) {
      _brabancon = [];
      json['brabancon'].forEach((v) {
        _brabancon?.add(v);
      });
    }
    if (json['briard'] != null) {
      _briard = [];
      json['briard'].forEach((v) {
        _briard?.add(v);
      });
    }
    _buhund = json['buhund'] != null ? json['buhund'].cast<String>() : [];
    _bulldog = json['bulldog'] != null ? json['bulldog'].cast<String>() : [];
    _bullterrier = json['bullterrier'] != null ? json['bullterrier'].cast<String>() : [];
    _cattledog = json['cattledog'] != null ? json['cattledog'].cast<String>() : [];
    if (json['cavapoo'] != null) {
      _cavapoo = [];
      json['cavapoo'].forEach((v) {
        _cavapoo?.add(v);
      });
    }
    if (json['chihuahua'] != null) {
      _chihuahua = [];
      json['chihuahua'].forEach((v) {
        _chihuahua?.add(v);
      });
    }
    if (json['chow'] != null) {
      _chow = [];
      json['chow'].forEach((v) {
        _chow?.add(v);
      });
    }
    if (json['clumber'] != null) {
      _clumber = [];
      json['clumber'].forEach((v) {
        _clumber?.add(v);
      });
    }
    if (json['cockapoo'] != null) {
      _cockapoo = [];
      json['cockapoo'].forEach((v) {
        _cockapoo?.add(v);
      });
    }
    _collie = json['collie'] != null ? json['collie'].cast<String>() : [];
    if (json['coonhound'] != null) {
      _coonhound = [];
      json['coonhound'].forEach((v) {
        _coonhound?.add(v);
      });
    }
    _corgi = json['corgi'] != null ? json['corgi'].cast<String>() : [];
    if (json['cotondetulear'] != null) {
      _cotondetulear = [];
      json['cotondetulear'].forEach((v) {
        _cotondetulear?.add(v);
      });
    }
    if (json['dachshund'] != null) {
      _dachshund = [];
      json['dachshund'].forEach((v) {
        _dachshund?.add(v);
      });
    }
    if (json['dalmatian'] != null) {
      _dalmatian = [];
      json['dalmatian'].forEach((v) {
        _dalmatian?.add(v);
      });
    }
    _dane = json['dane'] != null ? json['dane'].cast<String>() : [];
    _deerhound = json['deerhound'] != null ? json['deerhound'].cast<String>() : [];
    if (json['dhole'] != null) {
      _dhole = [];
      json['dhole'].forEach((v) {
        _dhole?.add(v);
      });
    }
    if (json['dingo'] != null) {
      _dingo = [];
      json['dingo'].forEach((v) {
        _dingo?.add(v);
      });
    }
    if (json['doberman'] != null) {
      _doberman = [];
      json['doberman'].forEach((v) {
        _doberman?.add(v);
      });
    }
    _elkhound = json['elkhound'] != null ? json['elkhound'].cast<String>() : [];
    if (json['entlebucher'] != null) {
      _entlebucher = [];
      json['entlebucher'].forEach((v) {
        _entlebucher?.add(v);
      });
    }
    if (json['eskimo'] != null) {
      _eskimo = [];
      json['eskimo'].forEach((v) {
        _eskimo?.add(v);
      });
    }
    _finnish = json['finnish'] != null ? json['finnish'].cast<String>() : [];
    _frise = json['frise'] != null ? json['frise'].cast<String>() : [];
    if (json['germanshepherd'] != null) {
      _germanshepherd = [];
      json['germanshepherd'].forEach((v) {
        _germanshepherd?.add(v);
      });
    }
    _greyhound = json['greyhound'] != null ? json['greyhound'].cast<String>() : [];
    if (json['groenendael'] != null) {
      _groenendael = [];
      json['groenendael'].forEach((v) {
        _groenendael?.add(v);
      });
    }
    if (json['havanese'] != null) {
      _havanese = [];
      json['havanese'].forEach((v) {
        _havanese?.add(v);
      });
    }
    _hound = json['hound'] != null ? json['hound'].cast<String>() : [];
    if (json['husky'] != null) {
      _husky = [];
      json['husky'].forEach((v) {
        _husky?.add(v);
      });
    }
    if (json['keeshond'] != null) {
      _keeshond = [];
      json['keeshond'].forEach((v) {
        _keeshond?.add(v);
      });
    }
    if (json['kelpie'] != null) {
      _kelpie = [];
      json['kelpie'].forEach((v) {
        _kelpie?.add(v);
      });
    }
    if (json['komondor'] != null) {
      _komondor = [];
      json['komondor'].forEach((v) {
        _komondor?.add(v);
      });
    }
    if (json['kuvasz'] != null) {
      _kuvasz = [];
      json['kuvasz'].forEach((v) {
        _kuvasz?.add(v);
      });
    }
    if (json['labradoodle'] != null) {
      _labradoodle = [];
      json['labradoodle'].forEach((v) {
        _labradoodle?.add(v);
      });
    }
    if (json['labrador'] != null) {
      _labrador = [];
      json['labrador'].forEach((v) {
        _labrador?.add(v);
      });
    }
    if (json['leonberg'] != null) {
      _leonberg = [];
      json['leonberg'].forEach((v) {
        _leonberg?.add(v);
      });
    }
    if (json['lhasa'] != null) {
      _lhasa = [];
      json['lhasa'].forEach((v) {
        _lhasa?.add(v);
      });
    }
    if (json['malamute'] != null) {
      _malamute = [];
      json['malamute'].forEach((v) {
        _malamute?.add(v);
      });
    }
    if (json['malinois'] != null) {
      _malinois = [];
      json['malinois'].forEach((v) {
        _malinois?.add(v);
      });
    }
    if (json['maltese'] != null) {
      _maltese = [];
      json['maltese'].forEach((v) {
        _maltese?.add(v);
      });
    }
    _mastiff = json['mastiff'] != null ? json['mastiff'].cast<String>() : [];
    if (json['mexicanhairless'] != null) {
      _mexicanhairless = [];
      json['mexicanhairless'].forEach((v) {
        _mexicanhairless?.add(v);
      });
    }
    if (json['mix'] != null) {
      _mix = [];
      json['mix'].forEach((v) {
        _mix?.add(v);
      });
    }
    _mountain = json['mountain'] != null ? json['mountain'].cast<String>() : [];
    if (json['newfoundland'] != null) {
      _newfoundland = [];
      json['newfoundland'].forEach((v) {
        _newfoundland?.add(v);
      });
    }
    if (json['otterhound'] != null) {
      _otterhound = [];
      json['otterhound'].forEach((v) {
        _otterhound?.add(v);
      });
    }
    _ovcharka = json['ovcharka'] != null ? json['ovcharka'].cast<String>() : [];
    if (json['papillon'] != null) {
      _papillon = [];
      json['papillon'].forEach((v) {
        _papillon?.add(v);
      });
    }
    if (json['pekinese'] != null) {
      _pekinese = [];
      json['pekinese'].forEach((v) {
        _pekinese?.add(v);
      });
    }
    if (json['pembroke'] != null) {
      _pembroke = [];
      json['pembroke'].forEach((v) {
        _pembroke?.add(v);
      });
    }
    _pinscher = json['pinscher'] != null ? json['pinscher'].cast<String>() : [];
    if (json['pitbull'] != null) {
      _pitbull = [];
      json['pitbull'].forEach((v) {
        _pitbull?.add(v);
      });
    }
    _pointer = json['pointer'] != null ? json['pointer'].cast<String>() : [];
    if (json['pomeranian'] != null) {
      _pomeranian = [];
      json['pomeranian'].forEach((v) {
        _pomeranian?.add(v);
      });
    }
    _poodle = json['poodle'] != null ? json['poodle'].cast<String>() : [];
    if (json['pug'] != null) {
      _pug = [];
      json['pug'].forEach((v) {
        _pug?.add(v);
      });
    }
    if (json['puggle'] != null) {
      _puggle = [];
      json['puggle'].forEach((v) {
        _puggle?.add(v);
      });
    }
    if (json['pyrenees'] != null) {
      _pyrenees = [];
      json['pyrenees'].forEach((v) {
        _pyrenees?.add(v);
      });
    }
    if (json['redbone'] != null) {
      _redbone = [];
      json['redbone'].forEach((v) {
        _redbone?.add(v);
      });
    }
    _retriever = json['retriever'] != null ? json['retriever'].cast<String>() : [];
    _ridgeback = json['ridgeback'] != null ? json['ridgeback'].cast<String>() : [];
    if (json['rottweiler'] != null) {
      _rottweiler = [];
      json['rottweiler'].forEach((v) {
        _rottweiler?.add(v);
      });
    }
    if (json['saluki'] != null) {
      _saluki = [];
      json['saluki'].forEach((v) {
        _saluki?.add(v);
      });
    }
    if (json['samoyed'] != null) {
      _samoyed = [];
      json['samoyed'].forEach((v) {
        _samoyed?.add(v);
      });
    }
    if (json['schipperke'] != null) {
      _schipperke = [];
      json['schipperke'].forEach((v) {
        _schipperke?.add(v);
      });
    }
    _schnauzer = json['schnauzer'] != null ? json['schnauzer'].cast<String>() : [];
    _segugio = json['segugio'] != null ? json['segugio'].cast<String>() : [];
    _setter = json['setter'] != null ? json['setter'].cast<String>() : [];
    if (json['sharpei'] != null) {
      _sharpei = [];
      json['sharpei'].forEach((v) {
        _sharpei?.add(v);
      });
    }
    _sheepdog = json['sheepdog'] != null ? json['sheepdog'].cast<String>() : [];
    if (json['shiba'] != null) {
      _shiba = [];
      json['shiba'].forEach((v) {
        _shiba?.add(v);
      });
    }
    if (json['shihtzu'] != null) {
      _shihtzu = [];
      json['shihtzu'].forEach((v) {
        _shihtzu?.add(v);
      });
    }
    _spaniel = json['spaniel'] != null ? json['spaniel'].cast<String>() : [];
    _spitz = json['spitz'] != null ? json['spitz'].cast<String>() : [];
    _springer = json['springer'] != null ? json['springer'].cast<String>() : [];
    if (json['stbernard'] != null) {
      _stbernard = [];
      json['stbernard'].forEach((v) {
        _stbernard?.add(v);
      });
    }
    _terrier = json['terrier'] != null ? json['terrier'].cast<String>() : [];
    if (json['tervuren'] != null) {
      _tervuren = [];
      json['tervuren'].forEach((v) {
        _tervuren?.add(v);
      });
    }
    if (json['vizsla'] != null) {
      _vizsla = [];
      json['vizsla'].forEach((v) {
        _vizsla?.add(v);
      });
    }
    _waterdog = json['waterdog'] != null ? json['waterdog'].cast<String>() : [];
    if (json['weimaraner'] != null) {
      _weimaraner = [];
      json['weimaraner'].forEach((v) {
        _weimaraner?.add(v);
      });
    }
    if (json['whippet'] != null) {
      _whippet = [];
      json['whippet'].forEach((v) {
        _whippet?.add(v);
      });
    }
    _wolfhound = json['wolfhound'] != null ? json['wolfhound'].cast<String>() : [];
  }
  List<dynamic>? _affenpinscher;
  List<dynamic>? _african;
  List<dynamic>? _airedale;
  List<dynamic>? _akita;
  List<dynamic>? _appenzeller;
  List<String>? _australian;
  List<dynamic>? _basenji;
  List<dynamic>? _beagle;
  List<dynamic>? _bluetick;
  List<dynamic>? _borzoi;
  List<dynamic>? _bouvier;
  List<dynamic>? _boxer;
  List<dynamic>? _brabancon;
  List<dynamic>? _briard;
  List<String>? _buhund;
  List<String>? _bulldog;
  List<String>? _bullterrier;
  List<String>? _cattledog;
  List<dynamic>? _cavapoo;
  List<dynamic>? _chihuahua;
  List<dynamic>? _chow;
  List<dynamic>? _clumber;
  List<dynamic>? _cockapoo;
  List<String>? _collie;
  List<dynamic>? _coonhound;
  List<String>? _corgi;
  List<dynamic>? _cotondetulear;
  List<dynamic>? _dachshund;
  List<dynamic>? _dalmatian;
  List<String>? _dane;
  List<String>? _deerhound;
  List<dynamic>? _dhole;
  List<dynamic>? _dingo;
  List<dynamic>? _doberman;
  List<String>? _elkhound;
  List<dynamic>? _entlebucher;
  List<dynamic>? _eskimo;
  List<String>? _finnish;
  List<String>? _frise;
  List<dynamic>? _germanshepherd;
  List<String>? _greyhound;
  List<dynamic>? _groenendael;
  List<dynamic>? _havanese;
  List<String>? _hound;
  List<dynamic>? _husky;
  List<dynamic>? _keeshond;
  List<dynamic>? _kelpie;
  List<dynamic>? _komondor;
  List<dynamic>? _kuvasz;
  List<dynamic>? _labradoodle;
  List<dynamic>? _labrador;
  List<dynamic>? _leonberg;
  List<dynamic>? _lhasa;
  List<dynamic>? _malamute;
  List<dynamic>? _malinois;
  List<dynamic>? _maltese;
  List<String>? _mastiff;
  List<dynamic>? _mexicanhairless;
  List<dynamic>? _mix;
  List<String>? _mountain;
  List<dynamic>? _newfoundland;
  List<dynamic>? _otterhound;
  List<String>? _ovcharka;
  List<dynamic>? _papillon;
  List<dynamic>? _pekinese;
  List<dynamic>? _pembroke;
  List<String>? _pinscher;
  List<dynamic>? _pitbull;
  List<String>? _pointer;
  List<dynamic>? _pomeranian;
  List<String>? _poodle;
  List<dynamic>? _pug;
  List<dynamic>? _puggle;
  List<dynamic>? _pyrenees;
  List<dynamic>? _redbone;
  List<String>? _retriever;
  List<String>? _ridgeback;
  List<dynamic>? _rottweiler;
  List<dynamic>? _saluki;
  List<dynamic>? _samoyed;
  List<dynamic>? _schipperke;
  List<String>? _schnauzer;
  List<String>? _segugio;
  List<String>? _setter;
  List<dynamic>? _sharpei;
  List<String>? _sheepdog;
  List<dynamic>? _shiba;
  List<dynamic>? _shihtzu;
  List<String>? _spaniel;
  List<String>? _spitz;
  List<String>? _springer;
  List<dynamic>? _stbernard;
  List<String>? _terrier;
  List<dynamic>? _tervuren;
  List<dynamic>? _vizsla;
  List<String>? _waterdog;
  List<dynamic>? _weimaraner;
  List<dynamic>? _whippet;
  List<String>? _wolfhound;
Message copyWith({  List<dynamic>? affenpinscher,
  List<dynamic>? african,
  List<dynamic>? airedale,
  List<dynamic>? akita,
  List<dynamic>? appenzeller,
  List<String>? australian,
  List<dynamic>? basenji,
  List<dynamic>? beagle,
  List<dynamic>? bluetick,
  List<dynamic>? borzoi,
  List<dynamic>? bouvier,
  List<dynamic>? boxer,
  List<dynamic>? brabancon,
  List<dynamic>? briard,
  List<String>? buhund,
  List<String>? bulldog,
  List<String>? bullterrier,
  List<String>? cattledog,
  List<dynamic>? cavapoo,
  List<dynamic>? chihuahua,
  List<dynamic>? chow,
  List<dynamic>? clumber,
  List<dynamic>? cockapoo,
  List<String>? collie,
  List<dynamic>? coonhound,
  List<String>? corgi,
  List<dynamic>? cotondetulear,
  List<dynamic>? dachshund,
  List<dynamic>? dalmatian,
  List<String>? dane,
  List<String>? deerhound,
  List<dynamic>? dhole,
  List<dynamic>? dingo,
  List<dynamic>? doberman,
  List<String>? elkhound,
  List<dynamic>? entlebucher,
  List<dynamic>? eskimo,
  List<String>? finnish,
  List<String>? frise,
  List<dynamic>? germanshepherd,
  List<String>? greyhound,
  List<dynamic>? groenendael,
  List<dynamic>? havanese,
  List<String>? hound,
  List<dynamic>? husky,
  List<dynamic>? keeshond,
  List<dynamic>? kelpie,
  List<dynamic>? komondor,
  List<dynamic>? kuvasz,
  List<dynamic>? labradoodle,
  List<dynamic>? labrador,
  List<dynamic>? leonberg,
  List<dynamic>? lhasa,
  List<dynamic>? malamute,
  List<dynamic>? malinois,
  List<dynamic>? maltese,
  List<String>? mastiff,
  List<dynamic>? mexicanhairless,
  List<dynamic>? mix,
  List<String>? mountain,
  List<dynamic>? newfoundland,
  List<dynamic>? otterhound,
  List<String>? ovcharka,
  List<dynamic>? papillon,
  List<dynamic>? pekinese,
  List<dynamic>? pembroke,
  List<String>? pinscher,
  List<dynamic>? pitbull,
  List<String>? pointer,
  List<dynamic>? pomeranian,
  List<String>? poodle,
  List<dynamic>? pug,
  List<dynamic>? puggle,
  List<dynamic>? pyrenees,
  List<dynamic>? redbone,
  List<String>? retriever,
  List<String>? ridgeback,
  List<dynamic>? rottweiler,
  List<dynamic>? saluki,
  List<dynamic>? samoyed,
  List<dynamic>? schipperke,
  List<String>? schnauzer,
  List<String>? segugio,
  List<String>? setter,
  List<dynamic>? sharpei,
  List<String>? sheepdog,
  List<dynamic>? shiba,
  List<dynamic>? shihtzu,
  List<String>? spaniel,
  List<String>? spitz,
  List<String>? springer,
  List<dynamic>? stbernard,
  List<String>? terrier,
  List<dynamic>? tervuren,
  List<dynamic>? vizsla,
  List<String>? waterdog,
  List<dynamic>? weimaraner,
  List<dynamic>? whippet,
  List<String>? wolfhound,
}) => Message(  affenpinscher: affenpinscher ?? _affenpinscher,
  african: african ?? _african,
  airedale: airedale ?? _airedale,
  akita: akita ?? _akita,
  appenzeller: appenzeller ?? _appenzeller,
  australian: australian ?? _australian,
  basenji: basenji ?? _basenji,
  beagle: beagle ?? _beagle,
  bluetick: bluetick ?? _bluetick,
  borzoi: borzoi ?? _borzoi,
  bouvier: bouvier ?? _bouvier,
  boxer: boxer ?? _boxer,
  brabancon: brabancon ?? _brabancon,
  briard: briard ?? _briard,
  buhund: buhund ?? _buhund,
  bulldog: bulldog ?? _bulldog,
  bullterrier: bullterrier ?? _bullterrier,
  cattledog: cattledog ?? _cattledog,
  cavapoo: cavapoo ?? _cavapoo,
  chihuahua: chihuahua ?? _chihuahua,
  chow: chow ?? _chow,
  clumber: clumber ?? _clumber,
  cockapoo: cockapoo ?? _cockapoo,
  collie: collie ?? _collie,
  coonhound: coonhound ?? _coonhound,
  corgi: corgi ?? _corgi,
  cotondetulear: cotondetulear ?? _cotondetulear,
  dachshund: dachshund ?? _dachshund,
  dalmatian: dalmatian ?? _dalmatian,
  dane: dane ?? _dane,
  deerhound: deerhound ?? _deerhound,
  dhole: dhole ?? _dhole,
  dingo: dingo ?? _dingo,
  doberman: doberman ?? _doberman,
  elkhound: elkhound ?? _elkhound,
  entlebucher: entlebucher ?? _entlebucher,
  eskimo: eskimo ?? _eskimo,
  finnish: finnish ?? _finnish,
  frise: frise ?? _frise,
  germanshepherd: germanshepherd ?? _germanshepherd,
  greyhound: greyhound ?? _greyhound,
  groenendael: groenendael ?? _groenendael,
  havanese: havanese ?? _havanese,
  hound: hound ?? _hound,
  husky: husky ?? _husky,
  keeshond: keeshond ?? _keeshond,
  kelpie: kelpie ?? _kelpie,
  komondor: komondor ?? _komondor,
  kuvasz: kuvasz ?? _kuvasz,
  labradoodle: labradoodle ?? _labradoodle,
  labrador: labrador ?? _labrador,
  leonberg: leonberg ?? _leonberg,
  lhasa: lhasa ?? _lhasa,
  malamute: malamute ?? _malamute,
  malinois: malinois ?? _malinois,
  maltese: maltese ?? _maltese,
  mastiff: mastiff ?? _mastiff,
  mexicanhairless: mexicanhairless ?? _mexicanhairless,
  mix: mix ?? _mix,
  mountain: mountain ?? _mountain,
  newfoundland: newfoundland ?? _newfoundland,
  otterhound: otterhound ?? _otterhound,
  ovcharka: ovcharka ?? _ovcharka,
  papillon: papillon ?? _papillon,
  pekinese: pekinese ?? _pekinese,
  pembroke: pembroke ?? _pembroke,
  pinscher: pinscher ?? _pinscher,
  pitbull: pitbull ?? _pitbull,
  pointer: pointer ?? _pointer,
  pomeranian: pomeranian ?? _pomeranian,
  poodle: poodle ?? _poodle,
  pug: pug ?? _pug,
  puggle: puggle ?? _puggle,
  pyrenees: pyrenees ?? _pyrenees,
  redbone: redbone ?? _redbone,
  retriever: retriever ?? _retriever,
  ridgeback: ridgeback ?? _ridgeback,
  rottweiler: rottweiler ?? _rottweiler,
  saluki: saluki ?? _saluki,
  samoyed: samoyed ?? _samoyed,
  schipperke: schipperke ?? _schipperke,
  schnauzer: schnauzer ?? _schnauzer,
  segugio: segugio ?? _segugio,
  setter: setter ?? _setter,
  sharpei: sharpei ?? _sharpei,
  sheepdog: sheepdog ?? _sheepdog,
  shiba: shiba ?? _shiba,
  shihtzu: shihtzu ?? _shihtzu,
  spaniel: spaniel ?? _spaniel,
  spitz: spitz ?? _spitz,
  springer: springer ?? _springer,
  stbernard: stbernard ?? _stbernard,
  terrier: terrier ?? _terrier,
  tervuren: tervuren ?? _tervuren,
  vizsla: vizsla ?? _vizsla,
  waterdog: waterdog ?? _waterdog,
  weimaraner: weimaraner ?? _weimaraner,
  whippet: whippet ?? _whippet,
  wolfhound: wolfhound ?? _wolfhound,
);
  List<dynamic>? get affenpinscher => _affenpinscher;
  List<dynamic>? get african => _african;
  List<dynamic>? get airedale => _airedale;
  List<dynamic>? get akita => _akita;
  List<dynamic>? get appenzeller => _appenzeller;
  List<String>? get australian => _australian;
  List<dynamic>? get basenji => _basenji;
  List<dynamic>? get beagle => _beagle;
  List<dynamic>? get bluetick => _bluetick;
  List<dynamic>? get borzoi => _borzoi;
  List<dynamic>? get bouvier => _bouvier;
  List<dynamic>? get boxer => _boxer;
  List<dynamic>? get brabancon => _brabancon;
  List<dynamic>? get briard => _briard;
  List<String>? get buhund => _buhund;
  List<String>? get bulldog => _bulldog;
  List<String>? get bullterrier => _bullterrier;
  List<String>? get cattledog => _cattledog;
  List<dynamic>? get cavapoo => _cavapoo;
  List<dynamic>? get chihuahua => _chihuahua;
  List<dynamic>? get chow => _chow;
  List<dynamic>? get clumber => _clumber;
  List<dynamic>? get cockapoo => _cockapoo;
  List<String>? get collie => _collie;
  List<dynamic>? get coonhound => _coonhound;
  List<String>? get corgi => _corgi;
  List<dynamic>? get cotondetulear => _cotondetulear;
  List<dynamic>? get dachshund => _dachshund;
  List<dynamic>? get dalmatian => _dalmatian;
  List<String>? get dane => _dane;
  List<String>? get deerhound => _deerhound;
  List<dynamic>? get dhole => _dhole;
  List<dynamic>? get dingo => _dingo;
  List<dynamic>? get doberman => _doberman;
  List<String>? get elkhound => _elkhound;
  List<dynamic>? get entlebucher => _entlebucher;
  List<dynamic>? get eskimo => _eskimo;
  List<String>? get finnish => _finnish;
  List<String>? get frise => _frise;
  List<dynamic>? get germanshepherd => _germanshepherd;
  List<String>? get greyhound => _greyhound;
  List<dynamic>? get groenendael => _groenendael;
  List<dynamic>? get havanese => _havanese;
  List<String>? get hound => _hound;
  List<dynamic>? get husky => _husky;
  List<dynamic>? get keeshond => _keeshond;
  List<dynamic>? get kelpie => _kelpie;
  List<dynamic>? get komondor => _komondor;
  List<dynamic>? get kuvasz => _kuvasz;
  List<dynamic>? get labradoodle => _labradoodle;
  List<dynamic>? get labrador => _labrador;
  List<dynamic>? get leonberg => _leonberg;
  List<dynamic>? get lhasa => _lhasa;
  List<dynamic>? get malamute => _malamute;
  List<dynamic>? get malinois => _malinois;
  List<dynamic>? get maltese => _maltese;
  List<String>? get mastiff => _mastiff;
  List<dynamic>? get mexicanhairless => _mexicanhairless;
  List<dynamic>? get mix => _mix;
  List<String>? get mountain => _mountain;
  List<dynamic>? get newfoundland => _newfoundland;
  List<dynamic>? get otterhound => _otterhound;
  List<String>? get ovcharka => _ovcharka;
  List<dynamic>? get papillon => _papillon;
  List<dynamic>? get pekinese => _pekinese;
  List<dynamic>? get pembroke => _pembroke;
  List<String>? get pinscher => _pinscher;
  List<dynamic>? get pitbull => _pitbull;
  List<String>? get pointer => _pointer;
  List<dynamic>? get pomeranian => _pomeranian;
  List<String>? get poodle => _poodle;
  List<dynamic>? get pug => _pug;
  List<dynamic>? get puggle => _puggle;
  List<dynamic>? get pyrenees => _pyrenees;
  List<dynamic>? get redbone => _redbone;
  List<String>? get retriever => _retriever;
  List<String>? get ridgeback => _ridgeback;
  List<dynamic>? get rottweiler => _rottweiler;
  List<dynamic>? get saluki => _saluki;
  List<dynamic>? get samoyed => _samoyed;
  List<dynamic>? get schipperke => _schipperke;
  List<String>? get schnauzer => _schnauzer;
  List<String>? get segugio => _segugio;
  List<String>? get setter => _setter;
  List<dynamic>? get sharpei => _sharpei;
  List<String>? get sheepdog => _sheepdog;
  List<dynamic>? get shiba => _shiba;
  List<dynamic>? get shihtzu => _shihtzu;
  List<String>? get spaniel => _spaniel;
  List<String>? get spitz => _spitz;
  List<String>? get springer => _springer;
  List<dynamic>? get stbernard => _stbernard;
  List<String>? get terrier => _terrier;
  List<dynamic>? get tervuren => _tervuren;
  List<dynamic>? get vizsla => _vizsla;
  List<String>? get waterdog => _waterdog;
  List<dynamic>? get weimaraner => _weimaraner;
  List<dynamic>? get whippet => _whippet;
  List<String>? get wolfhound => _wolfhound;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_affenpinscher != null) {
      map['affenpinscher'] = _affenpinscher?.map((v) => v.toJson()).toList();
    }
    if (_african != null) {
      map['african'] = _african?.map((v) => v.toJson()).toList();
    }
    if (_airedale != null) {
      map['airedale'] = _airedale?.map((v) => v.toJson()).toList();
    }
    if (_akita != null) {
      map['akita'] = _akita?.map((v) => v.toJson()).toList();
    }
    if (_appenzeller != null) {
      map['appenzeller'] = _appenzeller?.map((v) => v.toJson()).toList();
    }
    map['australian'] = _australian;
    if (_basenji != null) {
      map['basenji'] = _basenji?.map((v) => v.toJson()).toList();
    }
    if (_beagle != null) {
      map['beagle'] = _beagle?.map((v) => v.toJson()).toList();
    }
    if (_bluetick != null) {
      map['bluetick'] = _bluetick?.map((v) => v.toJson()).toList();
    }
    if (_borzoi != null) {
      map['borzoi'] = _borzoi?.map((v) => v.toJson()).toList();
    }
    if (_bouvier != null) {
      map['bouvier'] = _bouvier?.map((v) => v.toJson()).toList();
    }
    if (_boxer != null) {
      map['boxer'] = _boxer?.map((v) => v.toJson()).toList();
    }
    if (_brabancon != null) {
      map['brabancon'] = _brabancon?.map((v) => v.toJson()).toList();
    }
    if (_briard != null) {
      map['briard'] = _briard?.map((v) => v.toJson()).toList();
    }
    map['buhund'] = _buhund;
    map['bulldog'] = _bulldog;
    map['bullterrier'] = _bullterrier;
    map['cattledog'] = _cattledog;
    if (_cavapoo != null) {
      map['cavapoo'] = _cavapoo?.map((v) => v.toJson()).toList();
    }
    if (_chihuahua != null) {
      map['chihuahua'] = _chihuahua?.map((v) => v.toJson()).toList();
    }
    if (_chow != null) {
      map['chow'] = _chow?.map((v) => v.toJson()).toList();
    }
    if (_clumber != null) {
      map['clumber'] = _clumber?.map((v) => v.toJson()).toList();
    }
    if (_cockapoo != null) {
      map['cockapoo'] = _cockapoo?.map((v) => v.toJson()).toList();
    }
    map['collie'] = _collie;
    if (_coonhound != null) {
      map['coonhound'] = _coonhound?.map((v) => v.toJson()).toList();
    }
    map['corgi'] = _corgi;
    if (_cotondetulear != null) {
      map['cotondetulear'] = _cotondetulear?.map((v) => v.toJson()).toList();
    }
    if (_dachshund != null) {
      map['dachshund'] = _dachshund?.map((v) => v.toJson()).toList();
    }
    if (_dalmatian != null) {
      map['dalmatian'] = _dalmatian?.map((v) => v.toJson()).toList();
    }
    map['dane'] = _dane;
    map['deerhound'] = _deerhound;
    if (_dhole != null) {
      map['dhole'] = _dhole?.map((v) => v.toJson()).toList();
    }
    if (_dingo != null) {
      map['dingo'] = _dingo?.map((v) => v.toJson()).toList();
    }
    if (_doberman != null) {
      map['doberman'] = _doberman?.map((v) => v.toJson()).toList();
    }
    map['elkhound'] = _elkhound;
    if (_entlebucher != null) {
      map['entlebucher'] = _entlebucher?.map((v) => v.toJson()).toList();
    }
    if (_eskimo != null) {
      map['eskimo'] = _eskimo?.map((v) => v.toJson()).toList();
    }
    map['finnish'] = _finnish;
    map['frise'] = _frise;
    if (_germanshepherd != null) {
      map['germanshepherd'] = _germanshepherd?.map((v) => v.toJson()).toList();
    }
    map['greyhound'] = _greyhound;
    if (_groenendael != null) {
      map['groenendael'] = _groenendael?.map((v) => v.toJson()).toList();
    }
    if (_havanese != null) {
      map['havanese'] = _havanese?.map((v) => v.toJson()).toList();
    }
    map['hound'] = _hound;
    if (_husky != null) {
      map['husky'] = _husky?.map((v) => v.toJson()).toList();
    }
    if (_keeshond != null) {
      map['keeshond'] = _keeshond?.map((v) => v.toJson()).toList();
    }
    if (_kelpie != null) {
      map['kelpie'] = _kelpie?.map((v) => v.toJson()).toList();
    }
    if (_komondor != null) {
      map['komondor'] = _komondor?.map((v) => v.toJson()).toList();
    }
    if (_kuvasz != null) {
      map['kuvasz'] = _kuvasz?.map((v) => v.toJson()).toList();
    }
    if (_labradoodle != null) {
      map['labradoodle'] = _labradoodle?.map((v) => v.toJson()).toList();
    }
    if (_labrador != null) {
      map['labrador'] = _labrador?.map((v) => v.toJson()).toList();
    }
    if (_leonberg != null) {
      map['leonberg'] = _leonberg?.map((v) => v.toJson()).toList();
    }
    if (_lhasa != null) {
      map['lhasa'] = _lhasa?.map((v) => v.toJson()).toList();
    }
    if (_malamute != null) {
      map['malamute'] = _malamute?.map((v) => v.toJson()).toList();
    }
    if (_malinois != null) {
      map['malinois'] = _malinois?.map((v) => v.toJson()).toList();
    }
    if (_maltese != null) {
      map['maltese'] = _maltese?.map((v) => v.toJson()).toList();
    }
    map['mastiff'] = _mastiff;
    if (_mexicanhairless != null) {
      map['mexicanhairless'] = _mexicanhairless?.map((v) => v.toJson()).toList();
    }
    if (_mix != null) {
      map['mix'] = _mix?.map((v) => v.toJson()).toList();
    }
    map['mountain'] = _mountain;
    if (_newfoundland != null) {
      map['newfoundland'] = _newfoundland?.map((v) => v.toJson()).toList();
    }
    if (_otterhound != null) {
      map['otterhound'] = _otterhound?.map((v) => v.toJson()).toList();
    }
    map['ovcharka'] = _ovcharka;
    if (_papillon != null) {
      map['papillon'] = _papillon?.map((v) => v.toJson()).toList();
    }
    if (_pekinese != null) {
      map['pekinese'] = _pekinese?.map((v) => v.toJson()).toList();
    }
    if (_pembroke != null) {
      map['pembroke'] = _pembroke?.map((v) => v.toJson()).toList();
    }
    map['pinscher'] = _pinscher;
    if (_pitbull != null) {
      map['pitbull'] = _pitbull?.map((v) => v.toJson()).toList();
    }
    map['pointer'] = _pointer;
    if (_pomeranian != null) {
      map['pomeranian'] = _pomeranian?.map((v) => v.toJson()).toList();
    }
    map['poodle'] = _poodle;
    if (_pug != null) {
      map['pug'] = _pug?.map((v) => v.toJson()).toList();
    }
    if (_puggle != null) {
      map['puggle'] = _puggle?.map((v) => v.toJson()).toList();
    }
    if (_pyrenees != null) {
      map['pyrenees'] = _pyrenees?.map((v) => v.toJson()).toList();
    }
    if (_redbone != null) {
      map['redbone'] = _redbone?.map((v) => v.toJson()).toList();
    }
    map['retriever'] = _retriever;
    map['ridgeback'] = _ridgeback;
    if (_rottweiler != null) {
      map['rottweiler'] = _rottweiler?.map((v) => v.toJson()).toList();
    }
    if (_saluki != null) {
      map['saluki'] = _saluki?.map((v) => v.toJson()).toList();
    }
    if (_samoyed != null) {
      map['samoyed'] = _samoyed?.map((v) => v.toJson()).toList();
    }
    if (_schipperke != null) {
      map['schipperke'] = _schipperke?.map((v) => v.toJson()).toList();
    }
    map['schnauzer'] = _schnauzer;
    map['segugio'] = _segugio;
    map['setter'] = _setter;
    if (_sharpei != null) {
      map['sharpei'] = _sharpei?.map((v) => v.toJson()).toList();
    }
    map['sheepdog'] = _sheepdog;
    if (_shiba != null) {
      map['shiba'] = _shiba?.map((v) => v.toJson()).toList();
    }
    if (_shihtzu != null) {
      map['shihtzu'] = _shihtzu?.map((v) => v.toJson()).toList();
    }
    map['spaniel'] = _spaniel;
    map['spitz'] = _spitz;
    map['springer'] = _springer;
    if (_stbernard != null) {
      map['stbernard'] = _stbernard?.map((v) => v.toJson()).toList();
    }
    map['terrier'] = _terrier;
    if (_tervuren != null) {
      map['tervuren'] = _tervuren?.map((v) => v.toJson()).toList();
    }
    if (_vizsla != null) {
      map['vizsla'] = _vizsla?.map((v) => v.toJson()).toList();
    }
    map['waterdog'] = _waterdog;
    if (_weimaraner != null) {
      map['weimaraner'] = _weimaraner?.map((v) => v.toJson()).toList();
    }
    if (_whippet != null) {
      map['whippet'] = _whippet?.map((v) => v.toJson()).toList();
    }
    map['wolfhound'] = _wolfhound;
    return map;
  }

}