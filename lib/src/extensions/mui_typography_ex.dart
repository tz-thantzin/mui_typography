part of '../typography_core.dart';

extension MuiTypographyFluent on MuiTypography {
  /// Set text color
  MuiTypography withColor(Color color) => copyWith(color: color);

  /// Align text
  MuiTypography withAlign(TextAlign align) => copyWith(align: align);

  /// Enable ellipsis overflow (single line)
  MuiTypography get withNoWrap => copyWith(noWrap: true);

  /// Add bottom margin (8px)
  MuiTypography get withGutterBottom => copyWith(gutterBottom: true);

  /// Add paragraph spacing (16px bottom)
  MuiTypography get withParagraph => copyWith(paragraph: true);

  MuiTypography get ellipsis => withNoWrap;
  MuiTypography get singleLine => withNoWrap;
}

extension MuiTypographyCopyWith on MuiTypography {
  MuiTypography copyWith({
    Variant? variant,
    Color? color,
    TextAlign? align,
    bool? noWrap,
    bool? gutterBottom,
    bool? paragraph,
  }) {
    return MuiTypography._(
      text: text,
      key: key,
      variant: variant ?? this.variant,
      color: color ?? this.color,
      align: align ?? this.align,
      noWrap: noWrap ?? this.noWrap,
      gutterBottom: gutterBottom ?? this.gutterBottom,
      paragraph: paragraph ?? this.paragraph,
    );
  }
}
