package com.bumptech.glide.manager;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class u implements InterfaceC0740b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ F f9377a;

    public u(F f3) {
        this.f9377a = f3;
    }

    @Override // com.bumptech.glide.manager.InterfaceC0740b
    public void onConnectivityChanged(boolean z6) {
        ArrayList arrayList;
        G2.t.assertMainThread();
        synchronized (this.f9377a) {
            arrayList = new ArrayList(this.f9377a.f9353b);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((InterfaceC0740b) it.next()).onConnectivityChanged(z6);
        }
    }
}
