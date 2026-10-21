package com.bumptech.glide;

import V3.C0341b;
import V3.C0352m;
import android.content.Context;
import android.graphics.Rect;
import l.X0;

/* loaded from: classes.dex */
public abstract class f implements X0 {

    /* renamed from: a, reason: collision with root package name */
    public static Context f9135a;

    public static String f(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i2 = 0; i2 < str.length(); i2++) {
            sb.append(str.charAt(i2));
            if (str2.length() > i2) {
                sb.append(str2.charAt(i2));
            }
        }
        return sb.toString();
    }

    public abstract boolean a(com.google.common.util.concurrent.b bVar, C0341b c0341b, C0341b c0341b2);

    public abstract boolean b(com.google.common.util.concurrent.b bVar, Object obj, Object obj2);

    public abstract boolean c(com.google.common.util.concurrent.b bVar, C0352m c0352m, C0352m c0352m2);

    public abstract C0341b d(com.google.common.util.concurrent.b bVar);

    public abstract C0352m e(com.google.common.util.concurrent.b bVar);

    public abstract void g(Rect rect);

    public abstract void h(C0352m c0352m, C0352m c0352m2);

    public abstract void i(C0352m c0352m, Thread thread);
}
