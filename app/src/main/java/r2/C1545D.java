package r2;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

/* renamed from: r2.D, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1545D implements com.bumptech.glide.load.data.e {

    /* renamed from: b, reason: collision with root package name */
    public final File f19729b;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC1546E f19730e;

    /* renamed from: f, reason: collision with root package name */
    public Object f19731f;

    public C1545D(File file, InterfaceC1546E interfaceC1546E) {
        this.f19729b = file;
        this.f19730e = interfaceC1546E;
    }

    @Override // com.bumptech.glide.load.data.e
    public void cleanup() {
        Object obj = this.f19731f;
        if (obj != null) {
            try {
                this.f19730e.close(obj);
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public Class<Object> getDataClass() {
        return this.f19730e.getDataClass();
    }

    @Override // com.bumptech.glide.load.data.e
    public DataSource getDataSource() {
        return DataSource.f9179b;
    }

    @Override // com.bumptech.glide.load.data.e
    public void loadData(Priority priority, com.bumptech.glide.load.data.d dVar) {
        try {
            Object open = this.f19730e.open(this.f19729b);
            this.f19731f = open;
            dVar.onDataReady(open);
        } catch (FileNotFoundException e3) {
            if (Log.isLoggable("FileLoader", 3)) {
                Log.d("FileLoader", "Failed to open file", e3);
            }
            dVar.onLoadFailed(e3);
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public void cancel() {
    }
}
