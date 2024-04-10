import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class UpdateDocument extends StatelessWidget {
  const UpdateDocument({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: Text('Update Document',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 500,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: AppColors.grey,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Customer Service",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            height: 1.7,
                            color: AppColors.black,
                          ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.grey,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Profile Picture",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    height: 1.7,
                                    color: AppColors.black,
                                  ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.grey,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Driving Details",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    height: 1.7,
                                    color: AppColors.black,
                                  ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      GestureDetector(
                        onTap: () {
                          _showBottomSheet(context);
                        },
                        child: Container(
                          height: 50,
                          width: 500,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: AppColors.grey,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Government ID",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      height: 1.7,
                                      color: AppColors.black,
                                    ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
            ],
          ),
        ),
      )),
    );
  }
void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ListTile(
                title: Center(
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Divider(height: 2,color: Colors.black,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    'Are you sure you want to log out ?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                SizedBox(
                  width: 165,
                  height: 50,
                  child: ElevatedButton(
                          onPressed: () {
                           
                          },
                          child: Text('Cancel'),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.zero, 
                            ),
                          ),
                  ),
                ),
                SizedBox(
                  width: 165,
                  height: 50,
                  child: ElevatedButton(
                          onPressed: () {
                            
                          },
                          child: Text('Yes, Logout'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.zero, 
                            ),
                          ),
                  ),
                ),
                            ],
                          ),
              ),
            ],
          ),
        );
      },
    );
  }
}
 


