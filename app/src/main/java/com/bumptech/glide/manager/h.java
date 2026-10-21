package com.bumptech.glide.manager;

import android.view.View;
import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public final class h implements ViewTreeObserver.OnDrawListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f9362b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ i f9363e;

    public h(i iVar, View view) {
        this.f9363e = iVar;
        this.f9362b = view;
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public void onDraw() {
        G2.t.postOnUiThread(new RunnableC0745g(this, this));
    }
}
