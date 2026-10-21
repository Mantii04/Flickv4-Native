package androidx.datastore.preferences.protobuf;

import java.util.Collections;
import java.util.Map;

/* renamed from: androidx.datastore.preferences.protobuf.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0438w {

    /* renamed from: a, reason: collision with root package name */
    public static volatile C0438w f5924a;

    /* renamed from: b, reason: collision with root package name */
    public static final C0438w f5925b;

    static {
        try {
            Class.forName("androidx.datastore.preferences.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
        }
        C0438w c0438w = new C0438w();
        Map map = Collections.EMPTY_MAP;
        f5925b = c0438w;
    }

    public static C0438w getEmptyRegistry() {
        C0438w c0438w;
        C0438w c0438w2 = f5924a;
        if (c0438w2 != null) {
            return c0438w2;
        }
        synchronized (C0438w.class) {
            try {
                c0438w = f5924a;
                if (c0438w == null) {
                    c0438w = AbstractC0437v.createEmpty();
                    f5924a = c0438w;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0438w;
    }
}
