package com.google.android.gms.internal.cast;

import android.app.Activity;
import android.view.ViewGroup;
import com.google.android.gms.cast.framework.IntroductoryOverlay;

/* loaded from: classes2.dex */
final class zzar implements com.google.android.gms.cast.framework.internal.featurehighlight.zzg {
    final /* synthetic */ Activity zza;
    final /* synthetic */ com.google.android.gms.cast.framework.internal.featurehighlight.zzh zzb;
    final /* synthetic */ zzas zzc;

    public zzar(zzas zzasVar, Activity activity, com.google.android.gms.cast.framework.internal.featurehighlight.zzh zzhVar) {
        this.zzc = zzasVar;
        this.zza = activity;
        this.zzb = zzhVar;
    }

    @Override // com.google.android.gms.cast.framework.internal.featurehighlight.zzg
    public final void zza() {
        boolean z6;
        z6 = this.zzc.zzf;
        if (z6) {
            com.google.android.gms.cast.framework.zzbf.zza(this.zza);
            com.google.android.gms.cast.framework.internal.featurehighlight.zzh zzhVar = this.zzb;
            final Activity activity = this.zza;
            zzhVar.zzh(new Runnable() { // from class: com.google.android.gms.internal.cast.zzaq
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z7;
                    IntroductoryOverlay.OnOverlayDismissedListener onOverlayDismissedListener;
                    IntroductoryOverlay.OnOverlayDismissedListener onOverlayDismissedListener2;
                    zzar zzarVar = zzar.this;
                    z7 = zzarVar.zzc.zzf;
                    if (z7) {
                        ((ViewGroup) activity.getWindow().getDecorView()).removeView(zzarVar.zzc);
                        zzas zzasVar = zzarVar.zzc;
                        onOverlayDismissedListener = zzasVar.zzc;
                        if (onOverlayDismissedListener != null) {
                            onOverlayDismissedListener2 = zzasVar.zzc;
                            onOverlayDismissedListener2.onOverlayDismissed();
                        }
                        zzarVar.zzc.zzd();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.cast.framework.internal.featurehighlight.zzg
    public final void zzb() {
        boolean z6;
        z6 = this.zzc.zzf;
        if (z6) {
            com.google.android.gms.cast.framework.zzbf.zza(this.zza);
            com.google.android.gms.cast.framework.internal.featurehighlight.zzh zzhVar = this.zzb;
            final Activity activity = this.zza;
            zzhVar.zzg(new Runnable() { // from class: com.google.android.gms.internal.cast.zzap
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z7;
                    IntroductoryOverlay.OnOverlayDismissedListener onOverlayDismissedListener;
                    IntroductoryOverlay.OnOverlayDismissedListener onOverlayDismissedListener2;
                    zzar zzarVar = zzar.this;
                    z7 = zzarVar.zzc.zzf;
                    if (z7) {
                        ((ViewGroup) activity.getWindow().getDecorView()).removeView(zzarVar.zzc);
                        zzas zzasVar = zzarVar.zzc;
                        onOverlayDismissedListener = zzasVar.zzc;
                        if (onOverlayDismissedListener != null) {
                            onOverlayDismissedListener2 = zzasVar.zzc;
                            onOverlayDismissedListener2.onOverlayDismissed();
                        }
                        zzarVar.zzc.zzd();
                    }
                }
            });
        }
    }
}
