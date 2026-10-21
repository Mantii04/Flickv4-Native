package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;

@KeepForSdk
/* loaded from: classes.dex */
public abstract class DataBufferRef {

    /* renamed from: a, reason: collision with root package name */
    public int f10823a;

    @KeepForSdk
    public boolean equals(Object obj) {
        return (obj instanceof DataBufferRef) && Objects.equal(Integer.valueOf(((DataBufferRef) obj).f10823a), Integer.valueOf(this.f10823a)) && Objects.equal(0, 0);
    }

    @KeepForSdk
    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f10823a), 0, null);
    }

    public final void zaa(int i2) {
        if (i2 >= 0) {
            throw null;
        }
        Preconditions.checkState(false);
        this.f10823a = i2;
        throw null;
    }
}
