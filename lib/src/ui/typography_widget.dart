part of '../typography_core.dart';

class MuiTypography extends StatelessWidget {
  /// The text content to display.
  final String text;

  /// The typography variant to apply.
  final Variant variant;

  /// Text alignment.
  final TextAlign? align;

  /// Custom color override.
  final Color? color;

  /// Adds bottom margin (similar to MUI's gutterBottom).
  final bool gutterBottom;

  /// Prevents text wrapping, using ellipsis overflow.
  final bool noWrap;

  /// Treats the text as a paragraph with default bottom margin.
  final bool paragraph;

  const MuiTypography._({
    required this.text,
    super.key,
    this.variant = .body1,
    this.color,
    this.align,
    this.gutterBottom = false,
    this.noWrap = false,
    this.paragraph = false,
  });

  const MuiTypography(
    String text, {
    Variant variant = .body1,
    Color? color,
    TextAlign? align,
    bool gutterBottom = false,
    bool noWrap = false,
    bool paragraph = false,
    Key? key,
  }) : this._(
         key: key,
         text: text,
         variant: variant,
         color: color,
         align: align,
         gutterBottom: gutterBottom,
         noWrap: noWrap,
         paragraph: paragraph,
       );

  const MuiTypography.h1(
    String text, {
    Key? key,
    Color? color,
    TextAlign? align,
    bool gutterBottom = false,
    bool noWrap = false,
    bool paragraph = false,
  }) : this._(
         text: text,
         variant: Variant.h1,
         key: key,
         color: color,
         align: align,
         gutterBottom: gutterBottom,
         noWrap: noWrap,
         paragraph: paragraph,
       );

  const MuiTypography.h2(
    String text, {
    Key? key,
    Color? color,
    TextAlign? align,
    bool gutterBottom = false,
    bool noWrap = false,
    bool paragraph = false,
  }) : this._(
         text: text,
         variant: Variant.h2,
         key: key,
         color: color,
         align: align,
         gutterBottom: gutterBottom,
         noWrap: noWrap,
         paragraph: paragraph,
       );

  const MuiTypography.h3(
    String text, {
    Key? key,
    Color? color,
    TextAlign? align,
    bool gutterBottom = false,
    bool noWrap = false,
    bool paragraph = false,
  }) : this._(
         text: text,
         variant: Variant.h3,
         key: key,
         color: color,
         align: align,
         gutterBottom: gutterBottom,
         noWrap: noWrap,
         paragraph: paragraph,
       );

  const MuiTypography.h4(
    String text, {
    Key? key,
    Color? color,
    TextAlign? align,
    bool gutterBottom = false,
    bool noWrap = false,
    bool paragraph = false,
  }) : this._(
         text: text,
         variant: Variant.h4,
         key: key,
         color: color,
         align: align,
         gutterBottom: gutterBottom,
         noWrap: noWrap,
         paragraph: paragraph,
       );

  const MuiTypography.h5(
    String text, {
    Key? key,
    Color? color,
    TextAlign? align,
    bool gutterBottom = false,
    bool noWrap = false,
    bool paragraph = false,
  }) : this._(
         text: text,
         variant: Variant.h5,
         key: key,
         color: color,
         align: align,
         gutterBottom: gutterBottom,
         noWrap: noWrap,
         paragraph: paragraph,
       );

  const MuiTypography.h6(
    String text, {
    Key? key,
    Color? color,
    TextAlign? align,
    bool gutterBottom = false,
    bool noWrap = false,
    bool paragraph = false,
  }) : this._(
         text: text,
         variant: Variant.h6,
         key: key,
         color: color,
         align: align,
         gutterBottom: gutterBottom,
         noWrap: noWrap,
         paragraph: paragraph,
       );

  const MuiTypography.subtitle1(
    String text, {
    Key? key,
    Color? color,
    TextAlign? align,
    bool gutterBottom = false,
    bool noWrap = false,
    bool paragraph = false,
  }) : this._(
         text: text,
         variant: Variant.subtitle1,
         key: key,
         color: color,
         align: align,
         gutterBottom: gutterBottom,
         noWrap: noWrap,
         paragraph: paragraph,
       );

  const MuiTypography.subtitle2(
    String text, {
    Key? key,
    Color? color,
    TextAlign? align,
    bool gutterBottom = false,
    bool noWrap = false,
    bool paragraph = false,
  }) : this._(
         text: text,
         variant: Variant.subtitle2,
         key: key,
         color: color,
         align: align,
         gutterBottom: gutterBottom,
         noWrap: noWrap,
         paragraph: paragraph,
       );

  const MuiTypography.body1(
    String text, {
    Key? key,
    Color? color,
    TextAlign? align,
    bool gutterBottom = false,
    bool noWrap = false,
    bool paragraph = false,
  }) : this._(
         text: text,
         variant: Variant.body1,
         key: key,
         color: color,
         align: align,
         gutterBottom: gutterBottom,
         noWrap: noWrap,
         paragraph: paragraph,
       );

  const MuiTypography.body2(
    String text, {
    Key? key,
    Color? color,
    TextAlign? align,
    bool gutterBottom = false,
    bool noWrap = false,
    bool paragraph = false,
  }) : this._(
         text: text,
         variant: Variant.body2,
         key: key,
         color: color,
         align: align,
         gutterBottom: gutterBottom,
         noWrap: noWrap,
         paragraph: paragraph,
       );

  const MuiTypography.button(
    String text, {
    Key? key,
    Color? color,
    TextAlign? align,
    bool gutterBottom = false,
    bool noWrap = false,
    bool paragraph = false,
  }) : this._(
         text: text,
         variant: Variant.button,
         key: key,
         color: color,
         align: align,
         gutterBottom: gutterBottom,
         noWrap: noWrap,
         paragraph: paragraph,
       );

  const MuiTypography.caption(
    String text, {
    Key? key,
    Color? color,
    TextAlign? align,
    bool gutterBottom = false,
    bool noWrap = false,
    bool paragraph = false,
  }) : this._(
         text: text,
         variant: Variant.caption,
         key: key,
         color: color,
         align: align,
         gutterBottom: gutterBottom,
         noWrap: noWrap,
         paragraph: paragraph,
       );

  const MuiTypography.overline(
    String text, {
    Key? key,
    Color? color,
    TextAlign? align,
    bool gutterBottom = false,
    bool noWrap = false,
    bool paragraph = false,
  }) : this._(
         text: text,
         variant: Variant.overline,
         key: key,
         color: color,
         align: align,
         gutterBottom: gutterBottom,
         noWrap: noWrap,
         paragraph: paragraph,
       );

  TextStyle _getStyle(BuildContext context) {
    return switch (variant) {
      .h1 => const TextStyle(
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      .h2 => const TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      .h3 => const TextStyle(fontSize: 48, fontWeight: FontWeight.w400),
      .h4 => const TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      .h5 => const TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
      .h6 => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      .subtitle1 => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      .subtitle2 => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      .body1 => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      .body2 => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      .button => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      .caption => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      .overline => const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    // Apply custom color if provided
    final style = _getStyle(context).copyWith(color: color);

    // Auto uppercase for overline (exactly like MUI)
    final displayText = variant == .overline ? text.toUpperCase() : text;

    // Bottom padding logic
    final bottomPadding = paragraph
        ? 16.0
        : gutterBottom
        ? 8.0
        : 0.0;

    final child = Text(
      displayText,
      style: style,
      textAlign: align,
      overflow: noWrap ? TextOverflow.ellipsis : null,
      maxLines: noWrap ? 1 : null,
    );

    return bottomPadding > 0
        ? Padding(
            padding: EdgeInsets.only(bottom: bottomPadding),
            child: child,
          )
        : child;
  }
}
