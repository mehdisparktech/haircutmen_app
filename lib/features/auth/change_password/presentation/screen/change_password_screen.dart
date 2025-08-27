import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:haircutmen_app/utils/extensions/extension.dart';
import '../../../../../component/button/common_button.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../component/text_field/common_text_field.dart';
import '../controller/change_password_controller.dart';
import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_string.dart';
import '../../../../../utils/helpers/other_helper.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GetBuilder<ChangePasswordController>(
          builder: (controller) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(color: AppColors.black50),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x408E8E8E),
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Logo text here
                      const CommonText(
                        text: AppString.changePassword,
                        fontSize: 24,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                        maxLines: 2,
                        bottom: 20,
                      ).center,

                      /// current Password section
                      CommonText(text: AppString.currentPassword, bottom: 8),
                      CommonTextField(
                        controller: controller.currentPasswordController,
                        hintText: AppString.currentPassword,
                        validator: OtherHelper.passwordValidator,
                        isPassword: true,
                        prefixIcon: Icon(Icons.lock, size: 20.sp),
                      ),

                      /// New Password section
                      const CommonText(
                        text: AppString.newPassword,
                        bottom: 8,
                        top: 16,
                      ),
                      CommonTextField(
                        controller: controller.newPasswordController,
                        hintText: AppString.newPassword,
                        validator: OtherHelper.passwordValidator,
                        isPassword: true,
                        prefixIcon: Icon(Icons.lock, size: 20.sp),
                      ),

                      /// confirm Password section
                      const CommonText(
                        text: AppString.confirmPassword,
                        bottom: 8,
                        top: 16,
                      ),
                      CommonTextField(
                        controller: controller.confirmPasswordController,
                        hintText: AppString.confirmPassword,
                        validator:
                            (value) => OtherHelper.confirmPasswordValidator(
                              value,
                              controller.newPasswordController,
                            ),
                        isPassword: true,
                        prefixIcon: Icon(Icons.lock, size: 20.sp),
                      ),
                      20.height,

                      /// submit Button
                      CommonButton(
                        titleText: AppString.confirm,
                        isLoading: controller.isLoading,
                        onTap: controller.changePasswordRepo,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
