package com.bumptech.glide.load.data;

import java.io.InputStream;
import o2.InterfaceC1428b;

/* loaded from: classes.dex */
public final class p implements f {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1428b f9217a;

    public p(InterfaceC1428b interfaceC1428b) {
        this.f9217a = interfaceC1428b;
    }

    @Override // com.bumptech.glide.load.data.f
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.f
    public g build(InputStream inputStream) {
        return new q(inputStream, this.f9217a);
    }
}
