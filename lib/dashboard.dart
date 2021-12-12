
import 'dart:math';

import 'package:dashboard/dummy/dummy_transactions.dart';
import 'package:dashboard/widgets/payment_categories.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1C30),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: RefreshIndicator(
          onRefresh: () {
            return Future.delayed(
              const Duration(seconds: 1),
                () {
                setState(() {});
                }
            );
          },
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF252947),
                ),
                child: Row(
                  children: const [
                    Text(
                      'Card Balance',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text('\$0', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                    ),
                    Icon(Icons.arrow_forward_ios_sharp, color: Colors.white,)
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              const Text('PAYMENT CATEGORIES', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),),
              PaymentCategories(),
              Row(
                children: const [
                  Text('LATEST TRANSACTIONS', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),),
                  Spacer(),
                  Text('Show all', style: TextStyle(color: Colors.white),),
                  Icon(Icons.arrow_forward_ios, size: 15, color: Colors.white,)
                ],
              ),
              const SizedBox(height: 16,),
              DummyTransactions()
            ],
            physics: const AlwaysScrollableScrollPhysics(),
          ),
        ),
      ),
    );
  }
}
