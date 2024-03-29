import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_disign/src/config/theme/colors.dart';
import 'package:responsive_disign/src/modules/main_screen/presentation/providers/provider.dart';
import 'package:responsive_disign/src/shared/widgets/responsive.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: () => context.read<SideMenuProvider>().controlMenu(),
            icon: const Icon(Icons.menu),
          ),
        if (!Responsive.isMobile(context))
          const Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        if (!Responsive.isMobile(context)) Spacer(flex: !Responsive.isDesktop(context) ? 2 : 1),
        if (Responsive.isMobile(context)) SizedBox(width: CustomTheme.contentPadding),
        const Expanded(child: SearchWidget()),
        SizedBox(width: CustomTheme.contentPadding),
        const ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: CustomTheme.contentPadding,
        vertical: CustomTheme.contentPadding / 2,
      ),
      decoration: BoxDecoration(
          color: CustomTheme.colors.secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.white10)),
      child: Row(
        children: [
          Image.asset(
            'assets/images/profile_pic.png',
            height: 38,
          ),
          if (!Responsive.isMobile(context))
            Padding(
              padding: EdgeInsets.symmetric(horizontal: CustomTheme.contentPadding / 2),
              child: Text(
                'Flutter Flutter',
                style: GoogleFonts.benne(),
              ),
            ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: CustomTheme.colors.secondaryColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: CustomTheme.colors.primaryColor,
            ),
            margin: EdgeInsets.symmetric(horizontal: CustomTheme.contentPadding / 2),
            padding: EdgeInsets.all(CustomTheme.contentPadding * 0.75),
            child: SvgPicture.asset(CustomTheme.icons.search),
          ),
        ),
      ),
    );
  }
}
