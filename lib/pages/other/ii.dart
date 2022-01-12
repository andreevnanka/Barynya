class HH extends StatefulWidget {
  const HH({Key? key}) : super(key: key);

  @override
  _HHState createState() => _HHState();
}

class _HHState extends State<HH> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
