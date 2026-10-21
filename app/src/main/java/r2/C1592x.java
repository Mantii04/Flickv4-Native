package r2;

import android.content.res.Resources;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;

/* renamed from: r2.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1592x implements com.bumptech.glide.load.data.e {

    /* renamed from: b, reason: collision with root package name */
    public final Resources.Theme f19813b;

    /* renamed from: e, reason: collision with root package name */
    public final Resources f19814e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f19815f;

    /* renamed from: j, reason: collision with root package name */
    public final int f19816j;

    /* renamed from: m, reason: collision with root package name */
    public Object f19817m;

    public C1592x(Resources.Theme theme, Resources resources, InterfaceC1593y interfaceC1593y, int i2) {
        this.f19813b = theme;
        this.f19814e = resources;
        this.f19815f = interfaceC1593y;
        this.f19816j = i2;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, r2.y] */
    @Override // com.bumptech.glide.load.data.e
    public void cleanup() {
        Object obj = this.f19817m;
        if (obj != null) {
            try {
                this.f19815f.close(obj);
            } catch (IOException unused) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, r2.y] */
    @Override // com.bumptech.glide.load.data.e
    public Class<Object> getDataClass() {
        return this.f19815f.getDataClass();
    }

    @Override // com.bumptech.glide.load.data.e
    public DataSource getDataSource() {
        return DataSource.f9179b;
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, r2.y] */
    @Override // com.bumptech.glide.load.data.e
    public void loadData(Priority priority, com.bumptech.glide.load.data.d dVar) {
        try {
            Object open = this.f19815f.open(this.f19813b, this.f19814e, this.f19816j);
            this.f19817m = open;
            dVar.onDataReady(open);
        } catch (Resources.NotFoundException e3) {
            dVar.onLoadFailed(e3);
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public void cancel() {
    }
}
