package com.bumptech.glide;

import com.bumptech.glide.manager.InterfaceC0740b;
import com.bumptech.glide.manager.s;

/* loaded from: classes.dex */
public final class p implements InterfaceC0740b {

    /* renamed from: a, reason: collision with root package name */
    public final s f9387a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q f9388b;

    public p(q qVar, s sVar) {
        this.f9388b = qVar;
        this.f9387a = sVar;
    }

    @Override // com.bumptech.glide.manager.InterfaceC0740b
    public void onConnectivityChanged(boolean z6) {
        if (z6) {
            synchronized (this.f9388b) {
                this.f9387a.restartRequests();
            }
        }
    }
}
