package com.bumptech.glide.load.data;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import java.io.IOException;

/* loaded from: classes.dex */
public final class t implements g {

    /* renamed from: a, reason: collision with root package name */
    public final ParcelFileDescriptorRewinder$InternalRewinder f9222a;

    public t(ParcelFileDescriptor parcelFileDescriptor) {
        this.f9222a = new ParcelFileDescriptorRewinder$InternalRewinder(parcelFileDescriptor);
    }

    public static boolean isSupported() {
        return !"robolectric".equals(Build.FINGERPRINT);
    }

    @Override // com.bumptech.glide.load.data.g
    public void cleanup() {
    }

    @Override // com.bumptech.glide.load.data.g
    public ParcelFileDescriptor rewindAndGet() throws IOException {
        return this.f9222a.rewind();
    }
}
