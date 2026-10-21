package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class b implements e {

    /* renamed from: b, reason: collision with root package name */
    public final String f9197b;

    /* renamed from: e, reason: collision with root package name */
    public final AssetManager f9198e;

    /* renamed from: f, reason: collision with root package name */
    public Object f9199f;

    public b(AssetManager assetManager, String str) {
        this.f9198e = assetManager;
        this.f9197b = str;
    }

    @Override // com.bumptech.glide.load.data.e
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.e
    public void cleanup() {
        Object obj = this.f9199f;
        if (obj == null) {
            return;
        }
        try {
            close(obj);
        } catch (IOException unused) {
        }
    }

    public abstract void close(Object obj) throws IOException;

    @Override // com.bumptech.glide.load.data.e
    public DataSource getDataSource() {
        return DataSource.f9179b;
    }

    @Override // com.bumptech.glide.load.data.e
    public void loadData(Priority priority, d dVar) {
        try {
            Object loadResource = loadResource(this.f9198e, this.f9197b);
            this.f9199f = loadResource;
            dVar.onDataReady(loadResource);
        } catch (IOException e3) {
            if (Log.isLoggable("AssetPathFetcher", 3)) {
                Log.d("AssetPathFetcher", "Failed to load data from asset manager", e3);
            }
            dVar.onLoadFailed(e3);
        }
    }

    public abstract Object loadResource(AssetManager assetManager, String str) throws IOException;
}
