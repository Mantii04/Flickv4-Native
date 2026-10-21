package u2;

import android.os.Build;
import android.util.Log;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: u2.D, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1673D {

    /* renamed from: e, reason: collision with root package name */
    public static final boolean f20246e;

    /* renamed from: f, reason: collision with root package name */
    public static final boolean f20247f;

    /* renamed from: g, reason: collision with root package name */
    public static final File f20248g;

    /* renamed from: h, reason: collision with root package name */
    public static volatile C1673D f20249h;

    /* renamed from: b, reason: collision with root package name */
    public int f20251b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f20252c = true;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f20253d = new AtomicBoolean(false);

    /* renamed from: a, reason: collision with root package name */
    public final int f20250a = 20000;

    static {
        int i2 = Build.VERSION.SDK_INT;
        f20246e = i2 < 29;
        f20247f = i2 >= 28;
        f20248g = new File("/proc/self/fd");
    }

    public static C1673D getInstance() {
        if (f20249h == null) {
            synchronized (C1673D.class) {
                try {
                    if (f20249h == null) {
                        f20249h = new C1673D();
                    }
                } finally {
                }
            }
        }
        return f20249h;
    }

    public final int a() {
        if (Build.VERSION.SDK_INT == 28) {
            Iterator it = Arrays.asList("GM1900", "GM1901", "GM1903", "GM1911", "GM1915", "ONEPLUS A3000", "ONEPLUS A3010", "ONEPLUS A5010", "ONEPLUS A5000", "ONEPLUS A3003", "ONEPLUS A6000", "ONEPLUS A6003", "ONEPLUS A6010", "ONEPLUS A6013").iterator();
            while (it.hasNext()) {
                if (Build.MODEL.startsWith((String) it.next())) {
                    return 500;
                }
            }
        }
        return this.f20250a;
    }

    public boolean isHardwareConfigAllowed(int i2, int i7, boolean z6, boolean z7) {
        boolean z8;
        if (z6) {
            if (f20247f) {
                if (!f20246e || this.f20253d.get()) {
                    if (z7) {
                        if (Log.isLoggable("HardwareConfig", 2)) {
                            Log.v("HardwareConfig", "Hardware config disallowed because exif orientation is required");
                            return false;
                        }
                    } else if (i2 >= 0 && i7 >= 0) {
                        synchronized (this) {
                            try {
                                int i8 = this.f20251b + 1;
                                this.f20251b = i8;
                                if (i8 >= 50) {
                                    this.f20251b = 0;
                                    int length = f20248g.list().length;
                                    long a7 = a();
                                    boolean z9 = ((long) length) < a7;
                                    this.f20252c = z9;
                                    if (!z9 && Log.isLoggable("Downsampler", 5)) {
                                        Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + a7);
                                    }
                                }
                                z8 = this.f20252c;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (z8) {
                            return true;
                        }
                        if (Log.isLoggable("HardwareConfig", 2)) {
                            Log.v("HardwareConfig", "Hardware config disallowed because there are insufficient FDs");
                            return false;
                        }
                    } else if (Log.isLoggable("HardwareConfig", 2)) {
                        Log.v("HardwareConfig", "Hardware config disallowed because of invalid dimensions");
                    }
                } else if (Log.isLoggable("HardwareConfig", 2)) {
                    Log.v("HardwareConfig", "Hardware config disallowed by app state");
                    return false;
                }
            } else if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by sdk");
                return false;
            }
        } else if (Log.isLoggable("HardwareConfig", 2)) {
            Log.v("HardwareConfig", "Hardware config disallowed by caller");
            return false;
        }
        return false;
    }

    public void unblockHardwareBitmaps() {
        G2.t.assertMainThread();
        this.f20253d.set(true);
    }
}
