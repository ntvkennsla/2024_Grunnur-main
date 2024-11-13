void main() {
  performTask(() {
    print('Task complete!');
  });
}

void performTask(Function callback) {
  print('Performing task...');
  callback();
}