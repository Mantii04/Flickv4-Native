package i1;

import android.os.Build;

/* renamed from: i1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1004b {

    /* renamed from: a, reason: collision with root package name */
    public static final C1004b f16659a = new C1004b();

    public final int version() {
        if (Build.VERSION.SDK_INT >= 30) {
            return C1003a.f16658a.getAdServicesVersion();
        }
        return 0;
    }
}
