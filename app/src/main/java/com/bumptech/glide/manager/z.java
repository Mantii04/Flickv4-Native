package com.bumptech.glide.manager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public final class z extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ E f9385a;

    public z(E e3) {
        this.f9385a = e3;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        E e3 = this.f9385a;
        e3.getClass();
        E.f9344g.execute(new C(e3));
    }
}
