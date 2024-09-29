import 'package:flutter/material.dart';


class RadioIcon<T> extends StatelessWidget {
  final IconData? icon;

  final T value;
  final T selectedValue;
  final ValueChanged<T> onTap;
  const RadioIcon({
    super.key,
    required this.onTap,
    required this.icon,
    required this.selectedValue,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(value);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10, left: 10),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: value == selectedValue
              ? Theme.of(context).primaryColor.withOpacity(.4)
              : Colors.grey.withOpacity(0),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(icon),
      ),
    );
  }
}
