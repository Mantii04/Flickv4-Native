package p0;

import android.text.TextUtils;

/* renamed from: p0.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1482h {

    /* renamed from: a, reason: collision with root package name */
    public final String f19414a;

    /* renamed from: b, reason: collision with root package name */
    public final int f19415b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19416c;

    public C1482h(String str, int i2, int i7) {
        this.f19414a = str;
        this.f19415b = i2;
        this.f19416c = i7;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1482h)) {
            return false;
        }
        C1482h c1482h = (C1482h) obj;
        int i2 = this.f19416c;
        String str = this.f19414a;
        int i7 = this.f19415b;
        return (i7 < 0 || c1482h.f19415b < 0) ? TextUtils.equals(str, c1482h.f19414a) && i2 == c1482h.f19416c : TextUtils.equals(str, c1482h.f19414a) && i7 == c1482h.f19415b && i2 == c1482h.f19416c;
    }

    public int hashCode() {
        return L.c.hash(this.f19414a, Integer.valueOf(this.f19416c));
    }
}
