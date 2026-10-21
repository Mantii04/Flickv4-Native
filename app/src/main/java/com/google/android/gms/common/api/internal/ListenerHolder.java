package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes.dex */
public final class ListenerHolder<L> {

    /* renamed from: a, reason: collision with root package name */
    public volatile Object f10643a;

    /* renamed from: b, reason: collision with root package name */
    public volatile ListenerKey f10644b;

    @KeepForSdk
    public static final class ListenerKey<L> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f10645a;

        /* renamed from: b, reason: collision with root package name */
        public final String f10646b;

        public ListenerKey(Object obj, String str) {
            this.f10645a = obj;
            this.f10646b = str;
        }

        @KeepForSdk
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerKey)) {
                return false;
            }
            ListenerKey listenerKey = (ListenerKey) obj;
            return this.f10645a == listenerKey.f10645a && this.f10646b.equals(listenerKey.f10646b);
        }

        @KeepForSdk
        public int hashCode() {
            return this.f10646b.hashCode() + (System.identityHashCode(this.f10645a) * 31);
        }
    }

    @KeepForSdk
    public interface Notifier<L> {
    }

    @KeepForSdk
    public void clear() {
        this.f10643a = null;
        this.f10644b = null;
    }

    @KeepForSdk
    public ListenerKey<L> getListenerKey() {
        return this.f10644b;
    }
}
