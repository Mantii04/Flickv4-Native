package p0;

import android.media.session.MediaSessionManager;
import android.os.Build;
import android.text.TextUtils;

/* renamed from: p0.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1480f {

    /* renamed from: a, reason: collision with root package name */
    public final C1482h f19413a;

    public C1480f(String str, int i2, int i7) {
        if (str == null) {
            throw new NullPointerException("package shouldn't be null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("packageName should be nonempty");
        }
        if (Build.VERSION.SDK_INT < 28) {
            this.f19413a = new C1482h(str, i2, i7);
            return;
        }
        C1481g c1481g = new C1481g(str, i2, i7);
        com.google.firebase.crashlytics.internal.common.a.p(i2, i7, str);
        this.f19413a = c1481g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1480f)) {
            return false;
        }
        return this.f19413a.equals(((C1480f) obj).f19413a);
    }

    public int hashCode() {
        return this.f19413a.hashCode();
    }

    public C1480f(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        String packageName;
        String packageName2;
        int pid;
        int uid;
        packageName = remoteUserInfo.getPackageName();
        if (packageName != null) {
            if (!TextUtils.isEmpty(packageName)) {
                packageName2 = remoteUserInfo.getPackageName();
                pid = remoteUserInfo.getPid();
                uid = remoteUserInfo.getUid();
                this.f19413a = new C1481g(packageName2, pid, uid);
                return;
            }
            throw new IllegalArgumentException("packageName should be nonempty");
        }
        throw new NullPointerException("package shouldn't be null");
    }
}
