#include <map>
#include <iostream>
#include <set>

class C {
public:
   void getString() {
      std::cout << "C" << std::endl;
   }
   C (){};
};

struct B {
   std::set<C*> s;
   B() {
      C* c1 = new C;
      C* c2 = new C;
      C* c3 = new C;
     s.insert(c1);
     s.insert(c2);
     s.insert(c3);
   }

};

struct A {
   std::map<int,B*> m;
   A() {
      B* b1 = new B;
      B* b2 = new B;
      B* b3 = new B;
     m[1] = b1;
     m[2] = b2;
     m[3] = b3;
   }
};


int main() {
   A a;
   std::map<int, B*> m = a.m;
   for (std::map<int, B*>::iterator it = m.begin(); it != m.end(); ++it) {
      for (std::set<C*>::iterator it2 = ((it->second)->s).begin(); it2 != ((it->second)->s).end(); ++it2) {
         (*it2)->getString();
      }

   }
   return 0;
}
