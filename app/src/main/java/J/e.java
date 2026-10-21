package J;

import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;

/* loaded from: classes.dex */
public interface e {
    void close();

    Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal);
}
