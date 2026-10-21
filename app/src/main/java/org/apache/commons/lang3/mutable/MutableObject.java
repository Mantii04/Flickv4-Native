package org.apache.commons.lang3.mutable;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class MutableObject<T> implements Mutable<T>, Serializable {
    private static final long serialVersionUID = 86241875189L;
    private T value;

    public MutableObject() {
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (getClass() == obj.getClass()) {
            return this.value.equals(((MutableObject) obj).value);
        }
        return false;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    /* renamed from: getValue */
    public T getValue2() {
        return this.value;
    }

    public int hashCode() {
        T t6 = this.value;
        if (t6 == null) {
            return 0;
        }
        return t6.hashCode();
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(T t6) {
        this.value = t6;
    }

    public String toString() {
        T t6 = this.value;
        return t6 == null ? "null" : t6.toString();
    }

    public MutableObject(T t6) {
        this.value = t6;
    }
}
