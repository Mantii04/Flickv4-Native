package com.google.android.gms.cast.framework.media;

import android.util.LruCache;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
final class zzr extends LruCache {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MediaQueue f10313a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzr(MediaQueue mediaQueue) {
        super(20);
        this.f10313a = mediaQueue;
    }

    @Override // android.util.LruCache
    public final /* bridge */ /* synthetic */ void entryRemoved(boolean z6, Object obj, Object obj2, Object obj3) {
        Integer num = (Integer) obj;
        if (z6) {
            MediaQueue mediaQueue = this.f10313a;
            Preconditions.checkNotNull(mediaQueue.f9966g);
            mediaQueue.f9966g.add(num);
        }
    }
}
