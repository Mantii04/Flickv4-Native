package com.bumptech.glide.manager;

import android.view.View;
import u2.C1673D;

/* renamed from: com.bumptech.glide.manager.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0745g implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f9360b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ h f9361e;

    public RunnableC0745g(h hVar, h hVar2) {
        this.f9361e = hVar;
        this.f9360b = hVar2;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1673D.getInstance().unblockHardwareBitmaps();
        this.f9361e.f9363e.f9365b = true;
        View view = this.f9361e.f9362b;
        view.getViewTreeObserver().removeOnDrawListener(this.f9360b);
        this.f9361e.f9363e.f9364a.clear();
    }
}
