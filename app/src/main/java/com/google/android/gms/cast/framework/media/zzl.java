package com.google.android.gms.cast.framework.media;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
final class zzl implements com.google.android.gms.cast.framework.media.internal.zza {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzn f10299a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MediaNotificationService f10300b;

    public zzl(MediaNotificationService mediaNotificationService, zzn zznVar) {
        this.f10300b = mediaNotificationService;
        this.f10299a = zznVar;
    }

    @Override // com.google.android.gms.cast.framework.media.internal.zza
    public final void zza(Bitmap bitmap) {
        zzn zznVar = this.f10299a;
        zznVar.f10309b = bitmap;
        MediaNotificationService mediaNotificationService = this.f10300b;
        mediaNotificationService.f9957u = zznVar;
        mediaNotificationService.b();
    }
}
