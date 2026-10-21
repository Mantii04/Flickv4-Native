package r2;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;

/* renamed from: r2.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1576h implements com.bumptech.glide.load.data.e {

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f19786b;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC1575g f19787e;

    public C1576h(byte[] bArr, InterfaceC1575g interfaceC1575g) {
        this.f19786b = bArr;
        this.f19787e = interfaceC1575g;
    }

    @Override // com.bumptech.glide.load.data.e
    public Class<Object> getDataClass() {
        return this.f19787e.getDataClass();
    }

    @Override // com.bumptech.glide.load.data.e
    public DataSource getDataSource() {
        return DataSource.f9179b;
    }

    @Override // com.bumptech.glide.load.data.e
    public void loadData(Priority priority, com.bumptech.glide.load.data.d dVar) {
        dVar.onDataReady(this.f19787e.convert(this.f19786b));
    }

    @Override // com.bumptech.glide.load.data.e
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.e
    public void cleanup() {
    }
}
