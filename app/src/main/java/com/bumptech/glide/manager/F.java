package com.bumptech.glide.manager;

import android.content.Context;
import android.os.Build;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class F {

    /* renamed from: d, reason: collision with root package name */
    public static volatile F f9351d;

    /* renamed from: a, reason: collision with root package name */
    public final v f9352a;

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f9353b = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public boolean f9354c;

    public F(Context context) {
        G2.k memorize = G2.l.memorize(new t(context));
        u uVar = new u(this);
        this.f9352a = Build.VERSION.SDK_INT >= 24 ? new y(memorize, uVar) : new E(context, memorize, uVar);
    }

    public static F a(Context context) {
        if (f9351d == null) {
            synchronized (F.class) {
                try {
                    if (f9351d == null) {
                        f9351d = new F(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return f9351d;
    }
}
