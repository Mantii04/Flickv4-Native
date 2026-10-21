package com.google.android.gms.cast.framework.media;

import android.app.AlertDialog;
import android.content.DialogInterface;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzbr implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzbu f10289b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzbu f10290e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TracksChooserDialogFragment f10291f;

    public zzbr(TracksChooserDialogFragment tracksChooserDialogFragment, zzbu zzbuVar, zzbu zzbuVar2) {
        this.f10291f = tracksChooserDialogFragment;
        this.f10289b = zzbuVar;
        this.f10290e = zzbuVar2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        TracksChooserDialogFragment tracksChooserDialogFragment = this.f10291f;
        if (!tracksChooserDialogFragment.f10042v0) {
            AlertDialog alertDialog = tracksChooserDialogFragment.f10046z0;
            if (alertDialog != null) {
                alertDialog.cancel();
                tracksChooserDialogFragment.f10046z0 = null;
                return;
            }
            return;
        }
        RemoteMediaClient remoteMediaClient = (RemoteMediaClient) Preconditions.checkNotNull(tracksChooserDialogFragment.f10041A0);
        if (!remoteMediaClient.hasMediaSession()) {
            AlertDialog alertDialog2 = tracksChooserDialogFragment.f10046z0;
            if (alertDialog2 != null) {
                alertDialog2.cancel();
                tracksChooserDialogFragment.f10046z0 = null;
                return;
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        MediaTrack zza = this.f10289b.zza();
        if (zza != null && zza.getId() != -1) {
            arrayList.add(Long.valueOf(zza.getId()));
        }
        MediaTrack zza2 = this.f10290e.zza();
        if (zza2 != null) {
            arrayList.add(Long.valueOf(zza2.getId()));
        }
        long[] jArr = tracksChooserDialogFragment.f10045y0;
        if (jArr != null && jArr.length > 0) {
            HashSet hashSet = new HashSet();
            Iterator it = tracksChooserDialogFragment.f10044x0.iterator();
            while (it.hasNext()) {
                hashSet.add(Long.valueOf(((MediaTrack) it.next()).getId()));
            }
            Iterator it2 = tracksChooserDialogFragment.f10043w0.iterator();
            while (it2.hasNext()) {
                hashSet.add(Long.valueOf(((MediaTrack) it2.next()).getId()));
            }
            for (long j7 : jArr) {
                Long valueOf = Long.valueOf(j7);
                if (!hashSet.contains(valueOf)) {
                    arrayList.add(valueOf);
                }
            }
        }
        long[] jArr2 = new long[arrayList.size()];
        for (int i7 = 0; i7 < arrayList.size(); i7++) {
            jArr2[i7] = ((Long) arrayList.get(i7)).longValue();
        }
        Arrays.sort(jArr2);
        remoteMediaClient.setActiveMediaTracks(jArr2);
        AlertDialog alertDialog3 = tracksChooserDialogFragment.f10046z0;
        if (alertDialog3 != null) {
            alertDialog3.cancel();
            tracksChooserDialogFragment.f10046z0 = null;
        }
    }
}
