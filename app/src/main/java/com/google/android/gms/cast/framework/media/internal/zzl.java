package com.google.android.gms.cast.framework.media.internal;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
final class zzl implements zza {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzn f10058a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzo f10059b;

    public zzl(zzo zzoVar, zzn zznVar) {
        this.f10059b = zzoVar;
        this.f10058a = zznVar;
    }

    @Override // com.google.android.gms.cast.framework.media.internal.zza
    public final void zza(Bitmap bitmap) {
        zzn zznVar = this.f10058a;
        zznVar.f10068b = bitmap;
        zzo zzoVar = this.f10059b;
        zzoVar.f10083n = zznVar;
        zzoVar.b();
    }
}
