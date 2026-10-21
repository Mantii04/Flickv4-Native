package r2;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.io.FileNotFoundException;

/* renamed from: r2.O, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1556O implements com.bumptech.glide.load.data.e {

    /* renamed from: f, reason: collision with root package name */
    public static final String[] f19747f = {"_data"};

    /* renamed from: b, reason: collision with root package name */
    public final Context f19748b;

    /* renamed from: e, reason: collision with root package name */
    public final Uri f19749e;

    public C1556O(Context context, Uri uri) {
        this.f19748b = context;
        this.f19749e = uri;
    }

    @Override // com.bumptech.glide.load.data.e
    public Class<File> getDataClass() {
        return File.class;
    }

    @Override // com.bumptech.glide.load.data.e
    public DataSource getDataSource() {
        return DataSource.f9179b;
    }

    @Override // com.bumptech.glide.load.data.e
    public void loadData(Priority priority, com.bumptech.glide.load.data.d dVar) {
        Cursor query = this.f19748b.getContentResolver().query(this.f19749e, f19747f, null, null, null);
        if (query != null) {
            try {
                r0 = query.moveToFirst() ? query.getString(query.getColumnIndexOrThrow("_data")) : null;
                query.close();
            } catch (Throwable th) {
                query.close();
                throw th;
            }
        }
        if (!TextUtils.isEmpty(r0)) {
            dVar.onDataReady(new File(r0));
            return;
        }
        dVar.onLoadFailed(new FileNotFoundException("Failed to find file path for: " + this.f19749e));
    }

    @Override // com.bumptech.glide.load.data.e
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.e
    public void cleanup() {
    }
}
