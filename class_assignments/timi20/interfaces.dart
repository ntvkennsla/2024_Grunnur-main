// Create an Interface called IDatabase that has the following methods
// Create two classes that implement that interface
// Create instance of mock and database

class IDatabase {
  Create(){}
  Read() {}
  Update() {}
  Delete() {}
}

class Database implements IDatabase{
  @override
  Create() {
    print("Create database");
  }

  @override
  Delete() {
   print("Delete database");
  }

  @override
  Read() {
    print("Read from database");
  }

  @override
  Update() {
    // TODO: implement Update
    print("TODO: this will return an error");
    throw UnimplementedError();
  }
}

class MockDatabase implements IDatabase{
  @override
  Create() {
    print("Create **DEV-DB**");
  }

  @override
  Delete() {
    print("Delete **DEV-DB**");
  }

  @override
  Read() {
    print("Read **DEV-DB**");
  }

  @override
  Update() {
    print("UnimplementedError **DEV-DB**");
    print("TODO: this will return an error");
    throw UnimplementedError();
  }
}

void main(){
  print("database is on");
  MockDatabase ntv = new MockDatabase();
  ntv.Create();
  ntv.Read();
  //ntv.Update();
  ntv.Delete();
}