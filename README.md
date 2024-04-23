# Provider

### ChangeNotifier class
- 정의 : ```void callback은 dart type definition으로 argument가 없고 값을 리턴하지 않는 함수의 시그니쳐```

```dart
class Counter with ChangeNotifier {
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners(); // 호출 시 ChangeNotifier를 Listen 하고 있는 모든 오브젝트의 변동사항을 알려줌
  }
}
```

### ChangeNotifierProvider

ChangeNotifierProvider = ChangeNotifier + Provider

역할
1. ChangeNotifier의 인스턴스 생성
2. ChangeNotifier를 필요로 하는 위젯에 ChangeNotifier를 쉽게 엑세스 할 수 있도록 하는 수단을 제공한다
