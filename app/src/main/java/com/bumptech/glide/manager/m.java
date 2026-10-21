package com.bumptech.glide.manager;

import androidx.lifecycle.AbstractC0557o;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class m implements l {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractC0557o f9366b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C.k f9367e;

    public m(C.k kVar, AbstractC0557o abstractC0557o) {
        this.f9367e = kVar;
        this.f9366b = abstractC0557o;
    }

    @Override // com.bumptech.glide.manager.l
    public void onDestroy() {
        ((HashMap) this.f9367e.f325a).remove(this.f9366b);
    }

    @Override // com.bumptech.glide.manager.l
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.l
    public void onStop() {
    }
}
