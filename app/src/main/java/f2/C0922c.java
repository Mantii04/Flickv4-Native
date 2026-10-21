package f2;

import T1.J;
import android.util.Log;
import java.util.HashSet;

/* renamed from: f2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0922c implements J {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f14357a = new HashSet();

    @Override // T1.J
    public void debug(String str) {
        debug(str, null);
    }

    @Override // T1.J
    public void warning(String str) {
        warning(str, null);
    }

    public void debug(String str, Throwable th) {
    }

    @Override // T1.J
    public void warning(String str, Throwable th) {
        HashSet hashSet = f14357a;
        if (hashSet.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, th);
        hashSet.add(str);
    }

    @Override // T1.J
    public void error(String str, Throwable th) {
    }
}
