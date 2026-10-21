package com.google.android.gms.common.images;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.gms.common.annotation.KeepName;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class ImageManager {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f10835a = null;

    @KeepName
    public final class ImageReceiver extends ResultReceiver {
        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i2, Bundle bundle) {
            Object obj = ImageManager.f10835a;
            throw null;
        }
    }

    public interface OnImageLoadedListener {
    }

    static {
        new HashSet();
    }
}
