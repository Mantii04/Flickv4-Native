package androidx.mediarouter.app;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

/* renamed from: androidx.mediarouter.app.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class AsyncTaskC0619x extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final Bitmap f7912a;

    /* renamed from: b, reason: collision with root package name */
    public final Uri f7913b;

    /* renamed from: c, reason: collision with root package name */
    public int f7914c;

    /* renamed from: d, reason: collision with root package name */
    public long f7915d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ D f7916e;

    public AsyncTaskC0619x(D d7) {
        this.f7916e = d7;
        MediaDescriptionCompat mediaDescriptionCompat = d7.f7641g0;
        Bitmap iconBitmap = mediaDescriptionCompat == null ? null : mediaDescriptionCompat.getIconBitmap();
        if (iconBitmap != null && iconBitmap.isRecycled()) {
            Log.w("MediaRouteCtrlDialog", "Can't fetch the given art bitmap because it's already recycled.");
            iconBitmap = null;
        }
        this.f7912a = iconBitmap;
        MediaDescriptionCompat mediaDescriptionCompat2 = d7.f7641g0;
        this.f7913b = mediaDescriptionCompat2 != null ? mediaDescriptionCompat2.getIconUri() : null;
    }

    public final BufferedInputStream a(Uri uri) {
        InputStream openInputStream;
        String lowerCase = uri.getScheme().toLowerCase();
        if ("android.resource".equals(lowerCase) || FirebaseAnalytics.Param.CONTENT.equals(lowerCase) || "file".equals(lowerCase)) {
            openInputStream = this.f7916e.f7656s.getContentResolver().openInputStream(uri);
        } else {
            URLConnection openConnection = new URL(uri.toString()).openConnection();
            int i2 = D.f7608A0;
            openConnection.setConnectTimeout(i2);
            openConnection.setReadTimeout(i2);
            openInputStream = openConnection.getInputStream();
        }
        if (openInputStream == null) {
            return null;
        }
        return new BufferedInputStream(openInputStream);
    }

    public Bitmap getIconBitmap() {
        return this.f7912a;
    }

    public Uri getIconUri() {
        return this.f7913b;
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        this.f7915d = SystemClock.uptimeMillis();
        D d7 = this.f7916e;
        d7.f7645k0 = false;
        d7.f7646l0 = null;
        d7.f7647m0 = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
    
        if (r5 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0061, code lost:
    
        if (r5 != null) goto L28;
     */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x002d: MOVE (r3 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:58:0x002d */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00ee  */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap doInBackground(java.lang.Void... r11) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.AsyncTaskC0619x.doInBackground(java.lang.Void[]):android.graphics.Bitmap");
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Bitmap bitmap) {
        D d7 = this.f7916e;
        d7.f7642h0 = null;
        Bitmap bitmap2 = d7.f7643i0;
        Bitmap bitmap3 = this.f7912a;
        boolean equals = L.c.equals(bitmap2, bitmap3);
        Uri uri = this.f7913b;
        if (equals && L.c.equals(d7.f7644j0, uri)) {
            return;
        }
        d7.f7643i0 = bitmap3;
        d7.f7646l0 = bitmap;
        d7.f7644j0 = uri;
        d7.f7647m0 = this.f7914c;
        d7.f7645k0 = true;
        d7.m(SystemClock.uptimeMillis() - this.f7915d > 120);
    }
}
