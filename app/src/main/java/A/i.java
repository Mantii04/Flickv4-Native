package A;

import android.content.SharedPreferences;
import androidx.datastore.preferences.protobuf.AbstractC0434s;
import androidx.fragment.app.C;
import androidx.media3.common.util.Log;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public abstract /* synthetic */ class i {
    public static int A(int i2, int i7, int i8, int i9) {
        return AbstractC0434s.computeUInt32SizeNoTag(i2) + i7 + i8 + i9;
    }

    public static String B(String str, String str2) {
        return str + str2;
    }

    public static String C(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static int D(int i2, int i7, int i8, int i9) {
        return ((i2 * i7) / i8) + i9;
    }

    public static int a(int i2, int i7, int i8, int i9) {
        return ((i2 - i7) * i8) + i9;
    }

    public static int b(int i2, int i7, String str) {
        return (str.hashCode() + i2) * i7;
    }

    public static Object c(int i2, List list) {
        return list.get(list.size() - i2);
    }

    public static String d(int i2, int i7, String str) {
        return str.substring(i7, str.length() - i2);
    }

    public static String e(int i2, int i7, String str, String str2) {
        return str + i2 + str2 + i7;
    }

    public static String f(int i2, String str) {
        return str + i2;
    }

    public static String g(int i2, String str, String str2) {
        return str + i2 + str2;
    }

    public static String h(String str, char c7) {
        return str + c7;
    }

    public static String i(String str, long j7) {
        return str + j7;
    }

    public static String j(String str, C c7, String str2) {
        return str + c7 + str2;
    }

    public static String k(String str, String str2) {
        return str + str2;
    }

    public static String l(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String m(StringBuilder sb, int i2, String str) {
        sb.append(i2);
        sb.append(str);
        return sb.toString();
    }

    public static String n(StringBuilder sb, long j7, String str) {
        sb.append(j7);
        sb.append(str);
        return sb.toString();
    }

    public static String o(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static StringBuilder p(int i2, int i7, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i2);
        sb.append(str2);
        sb.append(i7);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder q(int i2, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i2);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder r(long j7, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(j7);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder s(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder t(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder u(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    public static void v(int i2, String str, String str2) {
        Log.w(str2, str + i2);
    }

    public static void w(int i2, HashMap hashMap, String str, int i7, String str2) {
        hashMap.put(str, Integer.valueOf(i2));
        hashMap.put(str2, Integer.valueOf(i7));
    }

    public static void x(SharedPreferences sharedPreferences, String str, boolean z6) {
        sharedPreferences.edit().putBoolean(str, z6).apply();
    }

    public static /* synthetic */ void y(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
    }

    public static void z(String str, String str2, String str3) {
        Log.w(str3, str + str2);
    }
}
