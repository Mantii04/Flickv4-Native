package r2;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: r2.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1581m implements com.bumptech.glide.load.data.e {

    /* renamed from: b, reason: collision with root package name */
    public final File f19795b;

    public C1581m(File file) {
        this.f19795b = file;
    }

    @Override // com.bumptech.glide.load.data.e
    public Class<ByteBuffer> getDataClass() {
        return ByteBuffer.class;
    }

    @Override // com.bumptech.glide.load.data.e
    public DataSource getDataSource() {
        return DataSource.f9179b;
    }

    @Override // com.bumptech.glide.load.data.e
    public void loadData(Priority priority, com.bumptech.glide.load.data.d dVar) {
        try {
            dVar.onDataReady(G2.c.fromFile(this.f19795b));
        } catch (IOException e3) {
            if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e3);
            }
            dVar.onLoadFailed(e3);
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.e
    public void cleanup() {
    }
}
