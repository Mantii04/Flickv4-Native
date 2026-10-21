package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.HandlerExecutor;
import java.util.Collections;
import java.util.WeakHashMap;

@KeepForSdk
/* loaded from: classes.dex */
public class ListenerHolders {
    public ListenerHolders() {
        Collections.newSetFromMap(new WeakHashMap());
    }

    @KeepForSdk
    public static <L> ListenerHolder<L> createListenerHolder(L l7, Looper looper, String str) {
        Preconditions.checkNotNull(l7, "Listener must not be null");
        Preconditions.checkNotNull(looper, "Looper must not be null");
        Preconditions.checkNotNull(str, "Listener type must not be null");
        ListenerHolder<L> listenerHolder = new ListenerHolder<>();
        new HandlerExecutor(looper);
        listenerHolder.f10643a = Preconditions.checkNotNull(l7, "Listener must not be null");
        listenerHolder.f10644b = new ListenerHolder.ListenerKey(l7, Preconditions.checkNotEmpty(str));
        return listenerHolder;
    }
}
