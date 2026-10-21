package J;

import android.content.ContentProviderClient;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.RemoteException;
import android.util.Log;

/* loaded from: classes.dex */
public final class f implements e {

    /* renamed from: a, reason: collision with root package name */
    public final ContentProviderClient f1397a;

    public f(Context context, Uri uri) {
        this.f1397a = context.getContentResolver().acquireUnstableContentProviderClient(uri);
    }

    @Override // J.e
    public void close() {
        ContentProviderClient contentProviderClient = this.f1397a;
        if (contentProviderClient != null) {
            contentProviderClient.release();
        }
    }

    @Override // J.e
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        ContentProviderClient contentProviderClient = this.f1397a;
        if (contentProviderClient == null) {
            return null;
        }
        try {
            return contentProviderClient.query(uri, strArr, str, strArr2, str2, cancellationSignal);
        } catch (RemoteException e3) {
            Log.w("FontsProvider", "Unable to query the content provider", e3);
            return null;
        }
    }
}
