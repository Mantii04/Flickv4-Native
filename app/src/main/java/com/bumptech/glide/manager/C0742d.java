package com.bumptech.glide.manager;

import android.content.Context;

/* renamed from: com.bumptech.glide.manager.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0742d implements InterfaceC0741c {

    /* renamed from: b, reason: collision with root package name */
    public final Context f9358b;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC0740b f9359e;

    public C0742d(Context context, InterfaceC0740b interfaceC0740b) {
        this.f9358b = context.getApplicationContext();
        this.f9359e = interfaceC0740b;
    }

    @Override // com.bumptech.glide.manager.l
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.l
    public void onStart() {
        F a7 = F.a(this.f9358b);
        InterfaceC0740b interfaceC0740b = this.f9359e;
        synchronized (a7) {
            a7.f9353b.add(interfaceC0740b);
            if (!a7.f9354c && !a7.f9353b.isEmpty()) {
                a7.f9354c = a7.f9352a.register();
            }
        }
    }

    @Override // com.bumptech.glide.manager.l
    public void onStop() {
        F a7 = F.a(this.f9358b);
        InterfaceC0740b interfaceC0740b = this.f9359e;
        synchronized (a7) {
            a7.f9353b.remove(interfaceC0740b);
            if (a7.f9354c && a7.f9353b.isEmpty()) {
                a7.f9352a.unregister();
                a7.f9354c = false;
            }
        }
    }
}
