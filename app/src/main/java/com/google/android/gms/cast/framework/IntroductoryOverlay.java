package com.google.android.gms.cast.framework;

import android.app.Activity;
import android.view.View;

/* loaded from: classes.dex */
public interface IntroductoryOverlay {

    public static class Builder {
        public final int zza() {
            return 0;
        }

        public final Activity zzb() {
            return null;
        }

        public final View zzc() {
            return null;
        }

        public final OnOverlayDismissedListener zzd() {
            return null;
        }

        public final String zze() {
            return null;
        }

        public final boolean zzf() {
            return false;
        }
    }

    public interface OnOverlayDismissedListener {
        void onOverlayDismissed();
    }
}
