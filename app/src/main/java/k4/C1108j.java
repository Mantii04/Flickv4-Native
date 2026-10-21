package k4;

import android.content.SharedPreferences;

/* renamed from: k4.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1108j {

    /* renamed from: a, reason: collision with root package name */
    public static volatile C1108j f17305a;

    /* renamed from: b, reason: collision with root package name */
    public static SharedPreferences f17306b;

    /* renamed from: c, reason: collision with root package name */
    public static final C1107i f17307c = new C1107i(null);

    public C1108j(kotlin.jvm.internal.g gVar) {
    }

    public final int getSelectedIndex(String name) {
        kotlin.jvm.internal.j.checkNotNullParameter(name, "name");
        SharedPreferences sharedPreferences = f17306b;
        if (sharedPreferences == null) {
            kotlin.jvm.internal.j.throwUninitializedPropertyAccessException("sharedPreferenceManager");
        }
        return sharedPreferences.getInt("INDEX" + name, -1);
    }

    public final void persistSelectedIndex(String name, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(name, "name");
        SharedPreferences sharedPreferences = f17306b;
        if (sharedPreferences == null) {
            kotlin.jvm.internal.j.throwUninitializedPropertyAccessException("sharedPreferenceManager");
        }
        sharedPreferences.edit().putInt("INDEX" + name, i2).apply();
    }
}
