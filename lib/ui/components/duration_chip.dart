import 'package:flutter/material.dart';

class DurationChip extends StatelessWidget {
  final Duration duration;

  const DurationChip({super.key, required this.duration});

  String _formatDuration(Duration d) {
    final minutes = d.inMinutes;
    final seconds = d.inSeconds % 60;
    return '${minutes}m ${seconds}s';
  }

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: const Icon(Icons.timer_outlined),
      label: Text(
        'Waktu Pengerjaan: ${_formatDuration(duration)}',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    );
  }
}
