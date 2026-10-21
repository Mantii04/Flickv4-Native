package com.bumptech.glide.manager;

import android.app.Activity;
import android.view.View;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class i implements j {

    /* renamed from: a, reason: collision with root package name */
    public final Set f9364a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f9365b;

    @Override // com.bumptech.glide.manager.j
    public void registerSelf(Activity activity) {
        if (!this.f9365b && this.f9364a.add(activity)) {
            View decorView = activity.getWindow().getDecorView();
            decorView.getViewTreeObserver().addOnDrawListener(new h(this, decorView));
        }
    }
}
