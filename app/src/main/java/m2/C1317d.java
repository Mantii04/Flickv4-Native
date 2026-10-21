package m2;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;

/* renamed from: m2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1317d implements f {

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f18549b = {"_data"};

    /* renamed from: a, reason: collision with root package name */
    public final ContentResolver f18550a;

    public C1317d(ContentResolver contentResolver) {
        this.f18550a = contentResolver;
    }

    @Override // m2.f
    public Cursor query(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        return this.f18550a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f18549b, "kind = 1 AND video_id = ?", new String[]{lastPathSegment}, null);
    }
}
