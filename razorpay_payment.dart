//packages role of flutter toast: to show small popups like payment failed/succeeded
//razorpay provides razorpay integration easy
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

//class razorpayPage and is stateful ofc we need to do payments
class RazorpayPage extends StatefulWidget {
  const RazorpayPage({super.key});

  @override
  State<RazorpayPage> createState() => _RazorpayPageState();
}

//another class. _razorpay i.e. private class
class _RazorpayPageState extends State<RazorpayPage> {
  late Razorpay _razorpay;
  // TextEditing controller is something inbuid
  //lets you read and edit text in textFeild , without it you cant grab what user typed
  TextEditingController amtController = TextEditingController();
  //when we do checkout this logic or objects are their on screen
  void openCheckout(amount) async {
    amount = amount * 100;
    var options = {
      'key': 'rzp_test_1DP5mmOlF5ag',
      'amount': amount,
      'currency': 'INR',
      'name': "Harshita Singh Dulawat",
      'prefill': {'contact': '9461180123', 'email': "test@gmail.com"},
      'external': ['paytm'],
    };
    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: $e ');
    }
  }

  void handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
      msg: "Payment Successful" + response.paymentId!,
      toastLength: Toast.LENGTH_SHORT,
    );
  }

  void handlePaymentError(PaymentFailureResponse response) {
    debugPrint(
      'Payment error code:${response.code}, message:${response.message}',
    );
    Fluttertoast.showToast(
      msg: "Payment Fail!" + response.message!,
      toastLength: Toast.LENGTH_SHORT,
    );
  }

  void handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
      msg: "External Wallet " + response.walletName!,
      toastLength: Toast.LENGTH_SHORT,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 200),
            Image.asset('lib/Assets/logo_AI_OTC.png', height: 100, width: 300),
            SizedBox(height: 10),
            Text(
              'Welcome to Razorpay Gateway Integration',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                cursorColor: Colors.white,
                autofocus: false,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Enter amount to be payed: ',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  errorStyle: TextStyle(color: Colors.redAccent, fontSize: 15),
                ),
                controller: amtController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    'Please enter amount to be payed';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (amtController.text.toString().isNotEmpty) {
                  setState(() {
                    int amount = int.parse(amtController.text.toString());
                    openCheckout(amount);
                  });
                }
              },

              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text('make Payment'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
