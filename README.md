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
  - 필요할 때 생성
  - 필요없어지면 메모리에서 없애준다
2. ChangeNotifier를 필요로 하는 위젯에 ChangeNotifier를 쉽게 엑세스 할 수 있도록 하는 수단을 제공한다
  - 생성자 필요없이 Provider.of를 이용하여 ChangeNotifier의 인스턴스에 쉽게 엑세스 할 수 있다
    - Provider.of<T>(context) : 변화가 있으면 UI rebuild 가능
    - Provider.of<T>(context, listen: false) : ChangeNotifier 인스턴스를 엑세스만 하고 변화를 listen 하지 않는다


