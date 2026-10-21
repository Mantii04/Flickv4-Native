package B1;

import android.util.Log;

/* loaded from: classes.dex */
public final class s extends t {

    /* renamed from: c, reason: collision with root package name */
    public final int f193c;

    public s(int i2) {
        super(i2);
        this.f193c = i2;
    }

    @Override // B1.t
    public void debug(String str, String str2) {
        if (this.f193c <= 3) {
            Log.d(str, str2);
        }
    }

    @Override // B1.t
    public void error(String str, String str2) {
        if (this.f193c <= 6) {
            Log.e(str, str2);
        }
    }

    @Override // B1.t
    public void info(String str, String str2) {
        if (this.f193c <= 4) {
            Log.i(str, str2);
        }
    }

    @Override // B1.t
    public void verbose(String str, String str2) {
        if (this.f193c <= 2) {
            Log.v(str, str2);
        }
    }

    @Override // B1.t
    public void warning(String str, String str2) {
        if (this.f193c <= 5) {
            Log.w(str, str2);
        }
    }

    @Override // B1.t
    public void debug(String str, String str2, Throwable th) {
        if (this.f193c <= 3) {
            Log.d(str, str2, th);
        }
    }

    @Override // B1.t
    public void error(String str, String str2, Throwable th) {
        if (this.f193c <= 6) {
            Log.e(str, str2, th);
        }
    }

    @Override // B1.t
    public void info(String str, String str2, Throwable th) {
        if (this.f193c <= 4) {
            Log.i(str, str2, th);
        }
    }

    @Override // B1.t
    public void warning(String str, String str2, Throwable th) {
        if (this.f193c <= 5) {
            Log.w(str, str2, th);
        }
    }
}
