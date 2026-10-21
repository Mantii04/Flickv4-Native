package io.reactivex.internal.util;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public class LinkedArrayList {
    final int capacityHint;
    Object[] head;
    int indexInTail;
    volatile int size;
    Object[] tail;

    public LinkedArrayList(int i2) {
        this.capacityHint = i2;
    }

    public void add(Object obj) {
        if (this.size == 0) {
            Object[] objArr = new Object[this.capacityHint + 1];
            this.head = objArr;
            this.tail = objArr;
            objArr[0] = obj;
            this.indexInTail = 1;
            this.size = 1;
            return;
        }
        int i2 = this.indexInTail;
        int i7 = this.capacityHint;
        if (i2 != i7) {
            this.tail[i2] = obj;
            this.indexInTail = i2 + 1;
            this.size++;
        } else {
            Object[] objArr2 = new Object[i7 + 1];
            objArr2[0] = obj;
            this.tail[i7] = objArr2;
            this.tail = objArr2;
            this.indexInTail = 1;
            this.size++;
        }
    }

    public Object[] head() {
        return this.head;
    }

    public int size() {
        return this.size;
    }

    public String toString() {
        int i2 = this.capacityHint;
        int i7 = this.size;
        ArrayList arrayList = new ArrayList(i7 + 1);
        Object[] head = head();
        int i8 = 0;
        int i9 = 0;
        while (i8 < i7) {
            arrayList.add(head[i9]);
            i8++;
            i9++;
            if (i9 == i2) {
                head = (Object[]) head[i2];
                i9 = 0;
            }
        }
        return arrayList.toString();
    }
}
