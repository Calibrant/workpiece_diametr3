import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TFWidget extends StatefulWidget {
  const TFWidget({
    super.key,
    required this.controllers,
    required this.onPressed,
    required this.prefixText,
    required this.hintText,
    required this.inputFormatters,
    this.onClearPressed,
  });

  final TextEditingController controllers;
  final Function(String) onPressed;
  final String prefixText;
  final String hintText;
  final List<TextInputFormatter> inputFormatters;
  final VoidCallback? onClearPressed; // New callback for clear button

  @override
  State<TFWidget> createState() => _TFWidgetState();
}

class _TFWidgetState extends State<TFWidget> {
  late String _lastText;

  @override
  void initState() {
    super.initState();
    _lastText = widget.controllers.text;
    // Добавляем слушатель для отслеживания изменений текста
    widget.controllers.addListener(_handleTextChange);
  }

  @override
  void dispose() {
    // Удаляем слушатель при уничтожении виджета
    widget.controllers.removeListener(_handleTextChange);
    super.dispose();
  }

  void _handleTextChange() {
    // Проверяем: если текст стал пустым, а до этого он содержал символы
    if (_lastText.isNotEmpty && widget.controllers.text.isEmpty) {
      widget.onClearPressed?.call();
    }
    _lastText = widget.controllers.text;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controllers,
      onChanged: widget.onPressed,
      inputFormatters: widget.inputFormatters,
      maxLength: 12,
      keyboardType: TextInputType.number,
      textAlignVertical: TextAlignVertical.bottom,
      style: const TextStyle(fontSize: 16),
      decoration: InputDecoration(
          constraints: const BoxConstraints.tightFor(width: 170, height: 65), // Увеличена высота для иконки
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          filled: true,
          fillColor: const Color(0xffFFD369),
          prefixText: widget.prefixText,
          hintText: widget.hintText,
          suffixIcon: IconButton(
            onPressed: () {
              widget.controllers.clear();
              widget.onPressed(''); // Уведомляем слушателя об очистке
              // onClearPressed?.call() теперь вызовется автоматически через _handleTextChange
            },
            icon: const Icon(Icons.clear, size: 20),
          )),
    );
  }
}
