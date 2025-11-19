part of '../typography_core.dart';

extension Mui on String {
  MuiTypography get h1 => MuiTypography.h1(this);
  MuiTypography get h2 => MuiTypography.h2(this);
  MuiTypography get h3 => MuiTypography.h3(this);
  MuiTypography get h4 => MuiTypography.h4(this);
  MuiTypography get h5 => MuiTypography.h5(this);
  MuiTypography get h6 => MuiTypography.h6(this);
  MuiTypography get subtitle1 => MuiTypography.subtitle1(this);
  MuiTypography get subtitle2 => MuiTypography.subtitle2(this);
  MuiTypography get body1 => MuiTypography.body1(this);
  MuiTypography get body2 => MuiTypography.body2(this);
  MuiTypography get button => MuiTypography.button(this);
  MuiTypography get caption => MuiTypography.caption(this);
  MuiTypography get overline => MuiTypography.overline(this);
}

extension MuiCall on String {
  MuiTypography call({
    Variant? variant,
    Color? color,
    TextAlign? align,
    bool gutterBottom = false,
    bool noWrap = false,
    bool paragraph = false,
    Key? key,
  }) {
    return MuiTypography(
      this,
      variant: variant ?? Variant.body1,
      color: color,
      align: align,
      gutterBottom: gutterBottom,
      noWrap: noWrap,
      paragraph: paragraph,
      key: key,
    );
  }
}
