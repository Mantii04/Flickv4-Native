package com.google.android.gms.cast.framework.media.uicontroller;

import com.google.android.gms.cast.framework.media.widget.CastSeekBar;

/* loaded from: classes.dex */
final class zzh extends com.google.android.gms.cast.framework.media.widget.zzd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ UIMediaController f10137a;

    public zzh(UIMediaController uIMediaController) {
        this.f10137a = uIMediaController;
    }

    @Override // com.google.android.gms.cast.framework.media.widget.zzd
    public final void zza(CastSeekBar castSeekBar, int i2, boolean z6) {
        this.f10137a.zzc(castSeekBar, i2, z6);
    }

    @Override // com.google.android.gms.cast.framework.media.widget.zzd
    public final void zzb(CastSeekBar castSeekBar) {
        this.f10137a.zzd(castSeekBar);
    }

    @Override // com.google.android.gms.cast.framework.media.widget.zzd
    public final void zzc(CastSeekBar castSeekBar) {
        this.f10137a.zze(castSeekBar);
    }
}
