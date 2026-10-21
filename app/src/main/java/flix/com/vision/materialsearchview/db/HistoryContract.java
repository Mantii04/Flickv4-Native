package flix.com.vision.materialsearchview.db;

import android.content.ContentUris;
import android.net.Uri;
import android.provider.BaseColumns;

/* loaded from: classes2.dex */
public class HistoryContract {

    /* renamed from: a, reason: collision with root package name */
    public static final Uri f16053a = Uri.parse("content://flix.com.vision.materialsearchview.searchhistorydatabase");

    public static final class HistoryEntry implements BaseColumns {

        /* renamed from: a, reason: collision with root package name */
        public static final Uri f16054a;

        /* renamed from: b, reason: collision with root package name */
        public static final String f16055b;

        /* renamed from: c, reason: collision with root package name */
        public static final String f16056c;

        static {
            Uri build = HistoryContract.f16053a.buildUpon().appendPath("history").build();
            f16054a = build;
            f16055b = "vnd.android.cursor.dir/" + build + "/history";
            f16056c = "vnd.android.cursor.item/" + build + "/history";
        }

        public static Uri buildHistoryUri(long j7) {
            return ContentUris.withAppendedId(f16054a, j7);
        }
    }
}
