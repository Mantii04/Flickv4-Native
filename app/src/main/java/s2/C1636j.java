package s2;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.io.FileNotFoundException;
import l2.q;
import m2.AbstractC1315b;
import r2.C1561U;
import r2.InterfaceC1562V;

/* renamed from: s2.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1636j implements com.bumptech.glide.load.data.e {

    /* renamed from: t, reason: collision with root package name */
    public static final String[] f20012t = {"_data"};

    /* renamed from: b, reason: collision with root package name */
    public final Context f20013b;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC1562V f20014e;

    /* renamed from: f, reason: collision with root package name */
    public final InterfaceC1562V f20015f;

    /* renamed from: j, reason: collision with root package name */
    public final Uri f20016j;

    /* renamed from: m, reason: collision with root package name */
    public final int f20017m;

    /* renamed from: n, reason: collision with root package name */
    public final int f20018n;

    /* renamed from: p, reason: collision with root package name */
    public final q f20019p;

    /* renamed from: q, reason: collision with root package name */
    public final Class f20020q;

    /* renamed from: r, reason: collision with root package name */
    public volatile boolean f20021r;

    /* renamed from: s, reason: collision with root package name */
    public volatile com.bumptech.glide.load.data.e f20022s;

    public C1636j(Context context, InterfaceC1562V interfaceC1562V, InterfaceC1562V interfaceC1562V2, Uri uri, int i2, int i7, q qVar, Class cls) {
        this.f20013b = context.getApplicationContext();
        this.f20014e = interfaceC1562V;
        this.f20015f = interfaceC1562V2;
        this.f20016j = uri;
        this.f20017m = i2;
        this.f20018n = i7;
        this.f20019p = qVar;
        this.f20020q = cls;
    }

    public final com.bumptech.glide.load.data.e a() {
        boolean isExternalStorageLegacy;
        C1561U buildLoadData;
        isExternalStorageLegacy = Environment.isExternalStorageLegacy();
        Cursor cursor = null;
        Context context = this.f20013b;
        q qVar = this.f20019p;
        int i2 = this.f20018n;
        int i7 = this.f20017m;
        if (isExternalStorageLegacy) {
            Uri uri = this.f20016j;
            try {
                Cursor query = context.getContentResolver().query(uri, f20012t, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            String string = query.getString(query.getColumnIndexOrThrow("_data"));
                            if (TextUtils.isEmpty(string)) {
                                throw new FileNotFoundException("File path was empty in media store for: " + uri);
                            }
                            File file = new File(string);
                            query.close();
                            buildLoadData = this.f20014e.buildLoadData(file, i7, i2, qVar);
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = query;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                throw new FileNotFoundException("Failed to media store entry for: " + uri);
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            Uri uri2 = this.f20016j;
            boolean isAndroidPickerUri = AbstractC1315b.isAndroidPickerUri(uri2);
            InterfaceC1562V interfaceC1562V = this.f20015f;
            if (isAndroidPickerUri) {
                buildLoadData = interfaceC1562V.buildLoadData(uri2, i7, i2, qVar);
            } else {
                if (context.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0) {
                    uri2 = MediaStore.setRequireOriginal(uri2);
                }
                buildLoadData = interfaceC1562V.buildLoadData(uri2, i7, i2, qVar);
            }
        }
        if (buildLoadData != null) {
            return buildLoadData.f19758c;
        }
        return null;
    }

    @Override // com.bumptech.glide.load.data.e
    public void cancel() {
        this.f20021r = true;
        com.bumptech.glide.load.data.e eVar = this.f20022s;
        if (eVar != null) {
            eVar.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public void cleanup() {
        com.bumptech.glide.load.data.e eVar = this.f20022s;
        if (eVar != null) {
            eVar.cleanup();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public Class<Object> getDataClass() {
        return this.f20020q;
    }

    @Override // com.bumptech.glide.load.data.e
    public DataSource getDataSource() {
        return DataSource.f9179b;
    }

    @Override // com.bumptech.glide.load.data.e
    public void loadData(Priority priority, com.bumptech.glide.load.data.d dVar) {
        try {
            com.bumptech.glide.load.data.e a7 = a();
            if (a7 == null) {
                dVar.onLoadFailed(new IllegalArgumentException("Failed to build fetcher for: " + this.f20016j));
            } else {
                this.f20022s = a7;
                if (this.f20021r) {
                    cancel();
                } else {
                    a7.loadData(priority, dVar);
                }
            }
        } catch (FileNotFoundException e3) {
            dVar.onLoadFailed(e3);
        }
    }
}
