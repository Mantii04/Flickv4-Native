package flix.com.vision.models;

import android.util.Base64;
import java.nio.charset.StandardCharsets;

/* loaded from: classes2.dex */
public class an {
    private final StringBuilder f14421a;
    private int f14422b;

    public an(String str) {
        this.f14422b = 0;
        this.f14421a = new StringBuilder(str);
        this.f14422b = Integer.parseInt("1");
    }

    public static String m18822a(String str) {
        return new String(Base64.decode(str.substring(1), 0), StandardCharsets.UTF_8);
    }

    public int m18823a() {
        return this.f14421a.length();
    }

    public void m18824a(int i2) {
        int i7 = this.f14422b + 1;
        this.f14422b = i7;
        this.f14421a.deleteCharAt(i7 + i2);
    }

    public String toString() {
        return this.f14421a.toString();
    }
}
