package androidx.mediarouter.app;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.support.v4.media.MediaDescriptionCompat;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes.dex */
public final class V extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final Bitmap f7745a;

    /* renamed from: b, reason: collision with root package name */
    public final Uri f7746b;

    /* renamed from: c, reason: collision with root package name */
    public int f7747c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ m0 f7748d;

    public V(m0 m0Var) {
        this.f7748d = m0Var;
        MediaDescriptionCompat mediaDescriptionCompat = m0Var.f7863U;
        Bitmap iconBitmap = mediaDescriptionCompat == null ? null : mediaDescriptionCompat.getIconBitmap();
        if (iconBitmap != null && iconBitmap.isRecycled()) {
            Log.w("MediaRouteCtrlDialog", "Can't fetch the given art bitmap because it's already recycled.");
            iconBitmap = null;
        }
        this.f7745a = iconBitmap;
        MediaDescriptionCompat mediaDescriptionCompat2 = m0Var.f7863U;
        this.f7746b = mediaDescriptionCompat2 != null ? mediaDescriptionCompat2.getIconUri() : null;
    }

    public final BufferedInputStream a(Uri uri) {
        InputStream openInputStream;
        String lowerCase = uri.getScheme().toLowerCase();
        if ("android.resource".equals(lowerCase) || FirebaseAnalytics.Param.CONTENT.equals(lowerCase) || "file".equals(lowerCase)) {
            openInputStream = this.f7748d.f7879w.getContentResolver().openInputStream(uri);
        } else {
            URLConnection openConnection = new URL(uri.toString()).openConnection();
            openConnection.setConnectTimeout(30000);
            openConnection.setReadTimeout(30000);
            openInputStream = openConnection.getInputStream();
        }
        if (openInputStream == null) {
            return null;
        }
        return new BufferedInputStream(openInputStream);
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        m0 m0Var = this.f7748d;
        m0Var.f7867Y = false;
        m0Var.f7868Z = null;
        m0Var.f7869a0 = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
    
        if (r5 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0061, code lost:
    
        if (r5 != null) goto L28;
     */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x002d: MOVE (r3 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:58:0x002d */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f2  */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap doInBackground(java.lang.Void... r10) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.V.doInBackground(java.lang.Void[]):android.graphics.Bitmap");
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Bitmap bitmap) {
        m0 m0Var = this.f7748d;
        m0Var.f7864V = null;
        Bitmap bitmap2 = m0Var.f7865W;
        Bitmap bitmap3 = this.f7745a;
        boolean equals = L.c.equals(bitmap2, bitmap3);
        Uri uri = this.f7746b;
        if (equals && L.c.equals(m0Var.f7866X, uri)) {
            return;
        }
        m0Var.f7865W = bitmap3;
        m0Var.f7868Z = bitmap;
        m0Var.f7866X = uri;
        m0Var.f7869a0 = this.f7747c;
        m0Var.f7867Y = true;
        m0Var.f();
    }
}
