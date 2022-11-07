import 'package:distr_test/src/components/adding_on_order_sheet.dart';
import 'package:distr_test/src/components/balance_popup_menu.dart';
import 'package:distr_test/src/components/commit_text_field.dart';
import 'package:distr_test/src/components/exchange_tools.dart';
import 'package:distr_test/src/components/order_reconciliation_act_sheet.dart';
import 'package:distr_test/src/components/photo_report.dart';
import 'package:distr_test/src/components/popup_menu.dart';
import 'package:distr_test/src/components/popup_menu_tools.dart';
import 'package:distr_test/src/components/purchase_history_sheet.dart';
import 'package:distr_test/src/components/reason_for_return_sheet.dart';
import 'package:distr_test/src/utils/assets.gen.dart';
import 'package:distr_test/src/utils/colors.gen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // PopupMenuTools(textName:const [
              //   "Редактрировать",
              //   "Комментария к заказу",
              //   "Дата отгрузки",
              //   "Срок Консигнация",
              //   "Закрепить фото",
              //   'Удалить',
              // ], textColor:const [
              //   ColorName.button,
              //   ColorName.black,
              //   ColorName.black,
              //   ColorName.black,
              //   ColorName.black,
              //   ColorName.red,
              // ], icons: [
              //   Assets.icons.edit.svg(),
              //   Assets.icons.chat.svg(),
              //   Assets.icons.calendar.svg(),
              //   Assets.icons.clock.svg(),
              //   Assets.icons.uploadingFile.svg(),
              //   Assets.icons.trash.svg(),
              // ]),

              // PopupMenu(
              //   icons: [
              //     Assets.icons.edit.svg(),
              //     Assets.icons.trash.svg(),
              //   ],
              //   textColor: [
              //     ColorName.button,
              //     ColorName.red,
              //   ],
              //   textName: [
              //     "Редактрировать",
              //     'Удалить',
              //   ],
              // ),

              // BalancePopupMenu(
              //   textName: const [
              //     "Баланс клиента",
              //     "Оборудование",
              //     "Акт - сверки",
              //     "Акт - сверки по заказам",
              //     "Остаток тары",
              //   ],
              //   icons: [
              //     Assets.icons.wallet.svg(),
              //     Assets.icons.luggage.svg(),
              //     Assets.icons.piechart1.svg(),
              //     Assets.icons.piechart2.svg(),
              //     Assets.icons.invoice.svg(),
              //   ],
              //   textColor: const [
              //     ColorName.black,
              //     ColorName.black,
              //     ColorName.black,
              //     ColorName.black,
              //     ColorName.black,
              //   ],
              // ),
              // const SizedBox(
              //   height: 20,
              // ),

              // ExchangeTools(
              //   textName: const [
              //     "Планы",
              //     'История',
              //     'Фото отчёт',
              //     'Отказ',
              //     'Возврат \nс полки',
              //     'Возврат \nтары',
              //     'Обмен',
              //     'Остатки',
              //   ],
              //   icons: [
              //     Assets.icons.pin.svg(),
              //     Assets.icons.history.svg(),
              //     Assets.icons.smartphone.svg(),
              //     Assets.icons.infoCircle.svg(),
              //     Assets.icons.refresh.svg(),
              //     Assets.icons.exchange.svg(),
              //     Assets.icons.box1.svg(),
              //     Assets.icons.box2.svg(),
              //   ],
              // ),

              // const SizedBox(
              //   height: 20,
              // ),

              // const CommitTextField(
              //   text: "Добавление комментарии",
              // ),

              const SizedBox(
                height: 20,
              ),

              AddingAnOrderSheet(
                text: "Добавление заказа",
                listTextName: const [
                  "Склад",
                  "Тип направления",
                  "Тип цены",
                ],
                seeListTextName: const [
                  "Основной склад",
                  "Направление..",
                  "Наличные",
                ],
                icons: [
                  Assets.icons.stack.svg(),
                  Assets.icons.shoppingCart.svg(),
                  Assets.icons.card.svg(),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              // const PhotoReport(
              //     image:
              //         "https://thumbs.dreamstime.com/z/natural-beauty-beautiful-provence-woman-basket-flowers-har-harvesting-lavender-field-sunset-attractive-pretty-girl-long-128685178.jpg",
              //     text: "Вы дейтвительно хотите удалить данное фото?"),
              const SizedBox(
                height: 20,
              ),

              //  const OrderReconciliationActSheet(
              //     text: "ddhjhjk",
              //     itemsName: [
              //       "Выбрать все",
              //       "Напитки",
              //       "Печенье",
              //       "Шоколад",
              //       "Шоколад",
              //       "Печенье",
              //     ],
              //   ),

              // const ReasomnForReturnSheet(
              //   text: "Salom",
              //   textItemsName: [
              //     "Не получается продать",
              //     "Не получается продать",
              //     "Не получается продать",
              //     "Не получается продать",
              //   ],
              // ),

              PurchaseHistorySheet(text: "Hello"),
            ],
          ),
        ),
      ),
    );
  }
}
