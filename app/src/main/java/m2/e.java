package m2;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class e implements com.bumptech.glide.load.data.e {

    /* renamed from: b, reason: collision with root package name */
    public final Uri f18551b;

    /* renamed from: e, reason: collision with root package name */
    public final g f18552e;

    /* renamed from: f, reason: collision with root package name */
    public InputStream f18553f;

    public e(Uri uri, g gVar) {
        this.f18551b = uri;
        this.f18552e = gVar;
    }

    public static e a(Context context, Uri uri, f fVar) {
        return new e(uri, new g(com.bumptech.glide.c.get(context).getRegistry().getImageHeaderParsers(), fVar, com.bumptech.glide.c.get(context).getArrayPool(), context.getContentResolver()));
    }

    public static e buildImageFetcher(Context context, Uri uri) {
        return a(context, uri, new C1316c(context.getContentResolver()));
    }

    public static e buildVideoFetcher(Context context, Uri uri) {
        return a(context, uri, new C1317d(context.getContentResolver()));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.InputStream b() {
        /*
            r8 = this;
            m2.g r0 = r8.f18552e
            android.net.Uri r1 = r8.f18551b
            java.io.InputStream r2 = r0.open(r1)
            r3 = -1
            if (r2 == 0) goto L4e
            r0.getClass()
            java.lang.String r4 = "ThumbStreamOpener"
            java.lang.String r5 = "Failed to open uri: "
            r6 = 0
            android.content.ContentResolver r7 = r0.f18557c     // Catch: java.lang.Throwable -> L27 java.lang.NullPointerException -> L29 java.io.IOException -> L2b
            java.io.InputStream r6 = r7.openInputStream(r1)     // Catch: java.lang.Throwable -> L27 java.lang.NullPointerException -> L29 java.io.IOException -> L2b
            java.util.List r7 = r0.f18558d     // Catch: java.lang.Throwable -> L27 java.lang.NullPointerException -> L29 java.io.IOException -> L2b
            o2.b r0 = r0.f18556b     // Catch: java.lang.Throwable -> L27 java.lang.NullPointerException -> L29 java.io.IOException -> L2b
            int r0 = l2.l.getOrientation(r7, r6, r0)     // Catch: java.lang.Throwable -> L27 java.lang.NullPointerException -> L29 java.io.IOException -> L2b
            if (r6 == 0) goto L4f
            r6.close()     // Catch: java.io.IOException -> L4f
            goto L4f
        L27:
            r0 = move-exception
            goto L48
        L29:
            r0 = move-exception
            goto L2c
        L2b:
            r0 = move-exception
        L2c:
            r7 = 3
            boolean r7 = android.util.Log.isLoggable(r4, r7)     // Catch: java.lang.Throwable -> L27
            if (r7 == 0) goto L42
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L27
            r7.<init>(r5)     // Catch: java.lang.Throwable -> L27
            r7.append(r1)     // Catch: java.lang.Throwable -> L27
            java.lang.String r1 = r7.toString()     // Catch: java.lang.Throwable -> L27
            android.util.Log.d(r4, r1, r0)     // Catch: java.lang.Throwable -> L27
        L42:
            if (r6 == 0) goto L4e
            r6.close()     // Catch: java.io.IOException -> L4e
            goto L4e
        L48:
            if (r6 == 0) goto L4d
            r6.close()     // Catch: java.io.IOException -> L4d
        L4d:
            throw r0
        L4e:
            r0 = r3
        L4f:
            if (r0 == r3) goto L57
            com.bumptech.glide.load.data.k r1 = new com.bumptech.glide.load.data.k
            r1.<init>(r2, r0)
            r2 = r1
        L57:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: m2.e.b():java.io.InputStream");
    }

    @Override // com.bumptech.glide.load.data.e
    public void cleanup() {
        InputStream inputStream = this.f18553f;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.e
    public DataSource getDataSource() {
        return DataSource.f9179b;
    }

    @Override // com.bumptech.glide.load.data.e
    public void loadData(Priority priority, com.bumptech.glide.load.data.d dVar) {
        try {
            InputStream b7 = b();
            this.f18553f = b7;
            dVar.onDataReady(b7);
        } catch (FileNotFoundException e3) {
            if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e3);
            }
            dVar.onLoadFailed(e3);
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public void cancel() {
    }
}
