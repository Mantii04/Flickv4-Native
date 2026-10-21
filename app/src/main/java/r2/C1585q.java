package r2;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;

/* renamed from: r2.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1585q implements com.bumptech.glide.load.data.e {

    /* renamed from: b, reason: collision with root package name */
    public final String f19799b;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC1584p f19800e;

    /* renamed from: f, reason: collision with root package name */
    public Object f19801f;

    public C1585q(String str, InterfaceC1584p interfaceC1584p) {
        this.f19799b = str;
        this.f19800e = interfaceC1584p;
    }

    @Override // com.bumptech.glide.load.data.e
    public void cleanup() {
        try {
            ((C1586r) this.f19800e).close(this.f19801f);
        } catch (IOException unused) {
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public Class<Object> getDataClass() {
        return ((C1586r) this.f19800e).getDataClass();
    }

    @Override // com.bumptech.glide.load.data.e
    public DataSource getDataSource() {
        return DataSource.f9179b;
    }

    @Override // com.bumptech.glide.load.data.e
    public void loadData(Priority priority, com.bumptech.glide.load.data.d dVar) {
        try {
            Object m252decode = ((C1586r) this.f19800e).m252decode(this.f19799b);
            this.f19801f = m252decode;
            dVar.onDataReady(m252decode);
        } catch (IllegalArgumentException e3) {
            dVar.onLoadFailed(e3);
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public void cancel() {
    }
}
