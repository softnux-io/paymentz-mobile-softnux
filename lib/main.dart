import 'package:after_layout/after_layout.dart';
import 'package:fluro/fluro.dart' as fluro;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:paymentez_mobile/channel/paymentez_channel.dart';
import 'package:paymentez_mobile/config/bloc.dart';
import 'package:paymentez_mobile/config/routes.dart';
import 'package:paymentez_mobile/generated/l10n.dart';
import 'package:paymentez_mobile/simple_bloc_delegate.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(
    BlocProvider(
      create: (context) => ConfigBloc()
        ..add(SetEnvironment(
            testMode: '',
            paymentezClientAppCode: '',
            paymentezClientAppKey: '')),
      child: App(),
    ),
  );
}

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with AfterLayoutMixin<App> {
  List<LocalizationsDelegate> delegates = List<LocalizationsDelegate>();

  @override
  void initState() {
    super.initState();

    delegates = [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      DefaultCupertinoLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      FallbackCupertinoLocalisationsDelegate(),
      S.delegate
    ];
  }

  @override
  Widget build(BuildContext context) {
    final router = new fluro.Router();
    Routes.configureRoutes(router);

    return MaterialApp(
        localizationsDelegates: delegates,
        initialRoute: Routes.addCard,
        supportedLocales: [
          const Locale('es', ''),
          const Locale('en', ''),
          const Locale('pt', ''),
        ],
        onGenerateRoute: router.generator);
  }

  @override
  void afterFirstLayout(BuildContext context) {
    print('afterFirstLayout called');
    Paymentez.getInstance.init(context);
  }
}

class FallbackCupertinoLocalisationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalisationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      DefaultCupertinoLocalizations.load(locale);

  @override
  bool shouldReload(FallbackCupertinoLocalisationsDelegate old) => false;
}
