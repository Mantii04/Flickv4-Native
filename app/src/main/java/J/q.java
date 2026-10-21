package J;

import android.net.Uri;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f1423a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1424b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1425c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f1426d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1427e;

    @Deprecated
    public q(Uri uri, int i2, int i7, boolean z6, int i8) {
        this.f1423a = (Uri) L.h.checkNotNull(uri);
        this.f1424b = i2;
        this.f1425c = i7;
        this.f1426d = z6;
        this.f1427e = i8;
    }

    public int getResultCode() {
        return this.f1427e;
    }

    public int getTtcIndex() {
        return this.f1424b;
    }

    public Uri getUri() {
        return this.f1423a;
    }

    public int getWeight() {
        return this.f1425c;
    }

    public boolean isItalic() {
        return this.f1426d;
    }
}
