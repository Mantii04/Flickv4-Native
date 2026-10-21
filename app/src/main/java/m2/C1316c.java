package m2;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;

/* renamed from: m2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1316c implements f {

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f18547b = {"_data"};

    /* renamed from: a, reason: collision with root package name */
    public final ContentResolver f18548a;

    public C1316c(ContentResolver contentResolver) {
        this.f18548a = contentResolver;
    }

    @Override // m2.f
    public Cursor query(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        return this.f18548a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f18547b, "kind = 1 AND image_id = ?", new String[]{lastPathSegment}, null);
    }
}
