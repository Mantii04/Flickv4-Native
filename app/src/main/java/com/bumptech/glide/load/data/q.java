package com.bumptech.glide.load.data;

import java.io.IOException;
import java.io.InputStream;
import o2.InterfaceC1428b;

/* loaded from: classes.dex */
public final class q implements g {

    /* renamed from: a, reason: collision with root package name */
    public final com.bumptech.glide.load.resource.bitmap.a f9218a;

    public q(InputStream inputStream, InterfaceC1428b interfaceC1428b) {
        com.bumptech.glide.load.resource.bitmap.a aVar = new com.bumptech.glide.load.resource.bitmap.a(inputStream, interfaceC1428b);
        this.f9218a = aVar;
        aVar.mark(5242880);
    }

    @Override // com.bumptech.glide.load.data.g
    public void cleanup() {
        this.f9218a.release();
    }

    public void fixMarkLimits() {
        this.f9218a.fixMarkLimit();
    }

    @Override // com.bumptech.glide.load.data.g
    public InputStream rewindAndGet() throws IOException {
        com.bumptech.glide.load.resource.bitmap.a aVar = this.f9218a;
        aVar.reset();
        return aVar;
    }
}
