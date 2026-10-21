package com.google.common.primitives;

import P3.v;
import java.io.Serializable;
import java.util.Arrays;
import okhttp3.HttpUrl;

/* loaded from: classes2.dex */
public final class ImmutableIntArray implements Serializable {

    /* renamed from: f, reason: collision with root package name */
    public static final ImmutableIntArray f13180f = new ImmutableIntArray(new int[0]);

    /* renamed from: b, reason: collision with root package name */
    public final int[] f13181b;

    /* renamed from: e, reason: collision with root package name */
    public final int f13182e;

    public ImmutableIntArray(int[] iArr) {
        int length = iArr.length;
        this.f13181b = iArr;
        this.f13182e = length;
    }

    public static ImmutableIntArray copyOf(int[] iArr) {
        return iArr.length == 0 ? f13180f : new ImmutableIntArray(Arrays.copyOf(iArr, iArr.length));
    }

    public static ImmutableIntArray of() {
        return f13180f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImmutableIntArray)) {
            return false;
        }
        ImmutableIntArray immutableIntArray = (ImmutableIntArray) obj;
        if (length() != immutableIntArray.length()) {
            return false;
        }
        for (int i2 = 0; i2 < length(); i2++) {
            if (get(i2) != immutableIntArray.get(i2)) {
                return false;
            }
        }
        return true;
    }

    public int get(int i2) {
        v.checkElementIndex(i2, length());
        return this.f13181b[i2];
    }

    public int hashCode() {
        int i2 = 1;
        for (int i7 = 0; i7 < this.f13182e; i7++) {
            i2 = (i2 * 31) + a.hashCode(this.f13181b[i7]);
        }
        return i2;
    }

    public boolean isEmpty() {
        return this.f13182e == 0;
    }

    public int length() {
        return this.f13182e;
    }

    public String toString() {
        if (isEmpty()) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder(length() * 5);
        sb.append('[');
        int[] iArr = this.f13181b;
        sb.append(iArr[0]);
        for (int i2 = 1; i2 < this.f13182e; i2++) {
            sb.append(", ");
            sb.append(iArr[i2]);
        }
        sb.append(']');
        return sb.toString();
    }
}
