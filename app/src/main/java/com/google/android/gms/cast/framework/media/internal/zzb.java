package com.google.android.gms.cast.framework.media.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public final class zzb {

    /* renamed from: a, reason: collision with root package name */
    public final Context f10048a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageHints f10049b;

    /* renamed from: c, reason: collision with root package name */
    public Uri f10050c;

    /* renamed from: d, reason: collision with root package name */
    public zzf f10051d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f10052e;

    /* renamed from: f, reason: collision with root package name */
    public zza f10053f;

    public zzb(Context context) {
        this(context, new ImageHints(-1, 0, 0));
    }

    public final void a() {
        zzf zzfVar = this.f10051d;
        if (zzfVar != null) {
            zzfVar.cancel(true);
            this.f10051d = null;
        }
        this.f10050c = null;
        this.f10052e = false;
    }

    public final void zza() {
        a();
        this.f10053f = null;
    }

    public final void zzb(Bitmap bitmap) {
        this.f10052e = true;
        zza zzaVar = this.f10053f;
        if (zzaVar != null) {
            zzaVar.zza(bitmap);
        }
        this.f10051d = null;
    }

    public final void zzc(zza zzaVar) {
        this.f10053f = zzaVar;
    }

    public final boolean zzd(Uri uri) {
        if (uri == null) {
            a();
            return true;
        }
        if (uri.equals(this.f10050c)) {
            return this.f10052e;
        }
        a();
        this.f10050c = uri;
        ImageHints imageHints = this.f10049b;
        if (imageHints.getWidthInPixels() == 0 || imageHints.getHeightInPixels() == 0) {
            this.f10051d = new zzf(this.f10048a, 0, 0, false, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE, 5, 333, 10000, this);
        } else {
            this.f10051d = new zzf(this.f10048a, imageHints.getWidthInPixels(), imageHints.getHeightInPixels(), false, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE, 5, 333, 10000, this);
        }
        ((zzf) Preconditions.checkNotNull(this.f10051d)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Uri) Preconditions.checkNotNull(this.f10050c));
        return false;
    }

    public zzb(Context context, ImageHints imageHints) {
        this.f10048a = context;
        this.f10049b = imageHints;
        new zzc();
        a();
    }
}
