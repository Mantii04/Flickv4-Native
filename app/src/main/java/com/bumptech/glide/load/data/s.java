package com.bumptech.glide.load.data;

import android.os.ParcelFileDescriptor;

/* loaded from: classes.dex */
public final class s implements f {
    @Override // com.bumptech.glide.load.data.f
    public Class<ParcelFileDescriptor> getDataClass() {
        return ParcelFileDescriptor.class;
    }

    @Override // com.bumptech.glide.load.data.f
    public g build(ParcelFileDescriptor parcelFileDescriptor) {
        return new t(parcelFileDescriptor);
    }
}
