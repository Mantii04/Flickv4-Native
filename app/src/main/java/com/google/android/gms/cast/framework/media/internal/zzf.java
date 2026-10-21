package com.google.android.gms.cast.framework.media.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.RemoteException;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.internal.cast.zzag;

/* loaded from: classes.dex */
public final class zzf extends AsyncTask {

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f10055c = new Logger("FetchBitmapTask");

    /* renamed from: a, reason: collision with root package name */
    public final zzi f10056a;

    /* renamed from: b, reason: collision with root package name */
    public final zzb f10057b;

    public zzf(Context context, int i2, int i7, boolean z6, long j7, int i8, int i9, int i10, zzb zzbVar) {
        this.f10057b = zzbVar;
        this.f10056a = zzag.zze(context.getApplicationContext(), this, new zze(this), i2, i7, false, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE, 5, 333, 10000);
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        Uri uri;
        zzi zziVar;
        Uri[] uriArr = (Uri[]) objArr;
        if (uriArr.length != 1 || (uri = uriArr[0]) == null || (zziVar = this.f10056a) == null) {
            return null;
        }
        try {
            return zziVar.zze(uri);
        } catch (RemoteException e3) {
            f10055c.d(e3, "Unable to call %s on %s.", "doFetch", "zzi");
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        Bitmap bitmap = (Bitmap) obj;
        zzb zzbVar = this.f10057b;
        if (zzbVar != null) {
            zzbVar.zzb(bitmap);
        }
    }
}
