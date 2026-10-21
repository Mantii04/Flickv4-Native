package c1;

import com.google.firebase.sessions.settings.RemoteSettings;

/* renamed from: c1.W, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0692W {

    /* renamed from: a, reason: collision with root package name */
    public final String f8649a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8650b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8651c;

    /* renamed from: d, reason: collision with root package name */
    public int f8652d;

    /* renamed from: e, reason: collision with root package name */
    public String f8653e;

    public C0692W(int i2, int i7) {
        this(Integer.MIN_VALUE, i2, i7);
    }

    public void generateNewId() {
        int i2 = this.f8652d;
        this.f8652d = i2 == Integer.MIN_VALUE ? this.f8650b : i2 + this.f8651c;
        this.f8653e = this.f8649a + this.f8652d;
    }

    public String getFormatId() {
        if (this.f8652d != Integer.MIN_VALUE) {
            return this.f8653e;
        }
        throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
    }

    public int getTrackId() {
        int i2 = this.f8652d;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
    }

    public C0692W(int i2, int i7, int i8) {
        String str;
        if (i2 != Integer.MIN_VALUE) {
            str = i2 + RemoteSettings.FORWARD_SLASH_STRING;
        } else {
            str = "";
        }
        this.f8649a = str;
        this.f8650b = i7;
        this.f8651c = i8;
        this.f8652d = Integer.MIN_VALUE;
        this.f8653e = "";
    }
}
