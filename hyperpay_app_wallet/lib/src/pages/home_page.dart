import 'package:flutter/material.dart';
import 'package:hyperpay_app_wallet/src/pages/balance_page.dart';
import 'package:hyperpay_app_wallet/src/pages/history_page.dart';
import 'package:hyperpay_app_wallet/src/pages/pay_page.dart';
import 'package:hyperpay_app_wallet/src/pages/sell_page.dart';
import 'package:hyperpay_app_wallet/src/widgets/menu_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  static final String routeName = "home";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _navBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuWidget(),
      appBar: _appBar(),
      body: _page(),
      bottomNavigationBar: _homeBottomNavigationBar(),
    );
  }

  Widget _homeBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _navBarIndex,
      onTap: (index) => {
        setState(() {
          _navBarIndex = index;
        })
      },
      selectedItemColor: Theme.of(context).focusColor,
      unselectedItemColor: Theme.of(context).hoverColor,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet_outlined),
          label: "Balance",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_shopping_cart_outlined),
          label: "Pay",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_card_outlined),
          label: "Sell",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: "History",
        ),
      ],
    );
  }

  Widget _page() {
    switch (_navBarIndex) {
      case 0:
        return BalancePage();
      case 1:
        return PayPage();
      case 2:
        return SellPage();
      case 3:
        return HistoryPage();
      default:
        return BalancePage();
    }
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        "Hyperpay",
        style: Theme.of(context).textTheme.headline1,
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () => {},
          padding: EdgeInsets.all(10),
          icon: Icon(Icons.exit_to_app_outlined),
          splashRadius: 22,
        ),
      ],
    );
  }
}
