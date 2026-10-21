package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class r implements e {

    /* renamed from: b, reason: collision with root package name */
    public final Uri f9219b;

    /* renamed from: e, reason: collision with root package name */
    public final ContentResolver f9220e;

    /* renamed from: f, reason: collision with root package name */
    public Object f9221f;

    public r(ContentResolver contentResolver, Uri uri) {
        this.f9220e = contentResolver;
        this.f9219b = uri;
    }

    @Override // com.bumptech.glide.load.data.e
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.e
    public void cleanup() {
        Object obj = this.f9221f;
        if (obj != null) {
            try {
                close(obj);
            } catch (IOException unused) {
            }
        }
    }

    public abstract void close(Object obj) throws IOException;

    @Override // com.bumptech.glide.load.data.e
    public DataSource getDataSource() {
        return DataSource.f9179b;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void loadData(Priority priority, d dVar) {
        try {
            Object loadResource = loadResource(this.f9219b, this.f9220e);
            this.f9221f = loadResource;
            dVar.onDataReady(loadResource);
        } catch (FileNotFoundException e3) {
            if (Log.isLoggable("LocalUriFetcher", 3)) {
                Log.d("LocalUriFetcher", "Failed to open Uri", e3);
            }
            dVar.onLoadFailed(e3);
        }
    }

    public abstract Object loadResource(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;
}
