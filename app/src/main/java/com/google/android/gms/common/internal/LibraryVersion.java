package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.concurrent.ConcurrentHashMap;

@KeepForSdk
@Deprecated
/* loaded from: classes.dex */
public class LibraryVersion {
    static {
        new GmsLogger("LibraryVersion", "");
        new LibraryVersion();
    }

    public LibraryVersion() {
        new ConcurrentHashMap();
    }
}
