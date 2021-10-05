import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatefulWidget {
  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  bool isLoading = true;
  @override
  void initState() {
    countdown();
    super.initState();
  }

  countdown() async {
    await Future.delayed(Duration(seconds: 5));
    setState(() {
      isLoading = false;
    });
    await Future.delayed(Duration(seconds: 3));
    setState(() {});
    Get.offAllNamed('/client_app');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (isLoading)
                ? CircularProgressIndicator()
                : Icon(
                    CupertinoIcons.check_mark_circled,
                    color: CupertinoColors.activeGreen,
                    size: 60,
                  ),
            SizedBox(
              height: 20,
            ),
            (isLoading)
                ? Text('Đang xử lý, vui lòng đợi một vài giây...')
                : Column(
                    children: [
                      Text('Chúc mừng bạn đã tạo đơn hàng thành công,'),
                      Text('sau 3 giây sẽ chuyển về trang chủ.')
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
