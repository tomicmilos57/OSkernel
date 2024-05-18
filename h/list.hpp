#ifndef list_hpp
#define list_hpp
// Vezbe 7
template <typename T> class List {

private:
  struct Elem {
    T *data;
    Elem *next;

    Elem(T *data, Elem *next) : data(data), next(next) {}
  };
  Elem *head, *tail;
  uint64 n;
public:
  List() : head(0), tail(0) {}
  List(const List<T> &) = delete;
  List<T> &operator=(const List<T> &) = delete;
  uint64 getNumOfElem(){ return n; }
  void addFirst(T *data) {
    Elem *elem = new Elem(data, head);
    head = elem;
    n++;
    if (!tail) {
      tail = head;
    }
  }
  void addLast(T *data) {
    Elem *elem = new Elem(data, 0);
    if (tail) {
      tail->next = elem;
      tail = elem;
    } else {
      head = tail = elem;
    }
    n++;
  }
  T *removeFirst() {
    if (!head) {
      return 0;
    }
    Elem *elem = head;
    head = head->next;
    if (!head) {
      tail = 0;
    }
    n--;
    T *ret = elem->data;
    delete elem;
    return ret;
  }
  T *peekFirst() {
    if (!head) {
      return 0;
    }
    return head->data;
  }
  T *removeLast() {
    if (!head) {
      return 0;
    }
    Elem *prev = 0;
    for (Elem *curr = head; curr && curr != tail; curr = curr->next) {
      prev = curr;
    }
    Elem *elem = tail;
    if (prev) {
      prev->next = 0;
    } else {
      head = 0;
    }
    tail = prev;
    n--;
    T *ret = elem->data;
    delete elem;
    return ret;
  }
  T *peekLast() {
    if (!tail) {
      return 0;
    }
    return tail->data;
  }
};

#endif