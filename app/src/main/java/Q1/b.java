package Q1;

import A.i;
import android.app.Notification;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Parcel;
import android.util.Base64;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static volatile SharedPreferences f2805a;

    /* renamed from: b, reason: collision with root package name */
    public static volatile b f2806b;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f2807c = new Object();

    public b(Context context) {
        f2805a = context.getSharedPreferences(c.f2809b, 0);
    }

    public static b a(Context context) {
        if (f2806b == null) {
            synchronized (f2807c) {
                try {
                    if (f2806b == null) {
                        f2806b = new b(context);
                    }
                } finally {
                }
            }
        }
        return f2806b;
    }

    public static void a(String str, String str2) {
        f2805a.edit().putString(str, str2).apply();
    }

    public static void a(String str, long j7) {
        f2805a.edit().putLong(str, j7).apply();
    }

    public static void a(String str, int i2) {
        f2805a.edit().putInt(str, i2).apply();
    }

    public static void a(String str, boolean z6) {
        i.x(f2805a, str, z6);
    }

    public static void a(Notification notification) {
        if (notification != null) {
            Parcel obtain = Parcel.obtain();
            notification.writeToParcel(obtain, 0);
            byte[] marshall = obtain.marshall();
            obtain.recycle();
            f2805a.edit().putString(c.f2827t, Base64.encodeToString(marshall, 0)).apply();
        }
    }
}
