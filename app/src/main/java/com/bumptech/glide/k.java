package com.bumptech.glide;

import androidx.leanback.widget.W;
import java.util.List;
import w1.AbstractC1775a;

/* loaded from: classes.dex */
public final class k implements G2.k {

    /* renamed from: a, reason: collision with root package name */
    public boolean f9173a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f9174b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f9175c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ A2.a f9176d;

    public k(c cVar, List list, A2.a aVar) {
        this.f9174b = cVar;
        this.f9175c = list;
        this.f9176d = aVar;
    }

    @Override // G2.k
    public j get() {
        if (this.f9173a) {
            throw new IllegalStateException("Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you're using the provided Registry rather calling glide.getRegistry()!");
        }
        AbstractC1775a.beginSection("Glide registry");
        this.f9173a = true;
        try {
            return W.c(this.f9174b, this.f9175c, this.f9176d);
        } finally {
            this.f9173a = false;
            AbstractC1775a.endSection();
        }
    }
}
