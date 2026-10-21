package com.google.android.gms.common.api.internal;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zaa extends LifecycleCallback {

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f10669b;

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = this.f10669b;
            this.f10669b = new ArrayList();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }
}
