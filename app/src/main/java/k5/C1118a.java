package k5;

import android.content.Context;
import android.content.SharedPreferences;
import io.hopmon.R;

/* renamed from: k5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1118a {

    /* renamed from: b, reason: collision with root package name */
    public static C1118a f17316b;

    /* renamed from: a, reason: collision with root package name */
    public final Context f17317a;

    public C1118a(Context context) {
        this.f17317a = context;
    }

    public static synchronized C1118a getInstance(Context context) {
        C1118a c1118a;
        synchronized (C1118a.class) {
            try {
                if (f17316b == null) {
                    f17316b = new C1118a(context);
                }
                c1118a = f17316b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1118a;
    }

    public final SharedPreferences a() {
        int i2 = R.string.hopmon_preference_file_key;
        Context context = this.f17317a;
        return context.getSharedPreferences(context.getString(i2), 0);
    }

    public String get(String str) {
        return a().getString(str, null);
    }

    public int getInt(String str, int i2) {
        return a().getInt(str, i2);
    }

    public long getLong(String str, long j7) {
        return a().getLong(str, j7);
    }

    public boolean is(String str) {
        return a().getBoolean(str, false);
    }

    public void set(String str, int i2) {
        a().edit().putInt(str, i2).apply();
    }

    public String get(String str, String str2) {
        return a().getString(str, str2);
    }

    public void set(String str, long j7) {
        a().edit().putLong(str, j7).apply();
    }

    public void set(String str, String str2) {
        a().edit().putString(str, str2).apply();
    }

    public void set(String str, boolean z6) {
        a().edit().putBoolean(str, z6).apply();
    }
}
