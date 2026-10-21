package r2;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;

/* loaded from: classes.dex */
public final class t0 implements com.bumptech.glide.load.data.e {

    /* renamed from: b, reason: collision with root package name */
    public final Object f19806b;

    public t0(Object obj) {
        this.f19806b = obj;
    }

    @Override // com.bumptech.glide.load.data.e
    public Class<Object> getDataClass() {
        return this.f19806b.getClass();
    }

    @Override // com.bumptech.glide.load.data.e
    public DataSource getDataSource() {
        return DataSource.f9179b;
    }

    @Override // com.bumptech.glide.load.data.e
    public void loadData(Priority priority, com.bumptech.glide.load.data.d dVar) {
        dVar.onDataReady(this.f19806b);
    }

    @Override // com.bumptech.glide.load.data.e
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.e
    public void cleanup() {
    }
}
