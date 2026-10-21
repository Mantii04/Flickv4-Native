package c1;

import java.util.Collections;
import java.util.List;

/* renamed from: c1.U, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0690U {

    /* renamed from: a, reason: collision with root package name */
    public final int f8644a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8645b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8646c;

    /* renamed from: d, reason: collision with root package name */
    public final List f8647d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f8648e;

    public C0690U(int i2, String str, int i7, List<C0689T> list, byte[] bArr) {
        this.f8644a = i2;
        this.f8645b = str;
        this.f8646c = i7;
        this.f8647d = list == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(list);
        this.f8648e = bArr;
    }

    public int getRoleFlags() {
        int i2 = this.f8646c;
        if (i2 != 2) {
            return i2 != 3 ? 0 : 512;
        }
        return 2048;
    }
}
