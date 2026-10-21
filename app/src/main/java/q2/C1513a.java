package q2;

import android.text.TextUtils;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: q2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1513a {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f19562a;

    /* renamed from: b, reason: collision with root package name */
    public int f19563b;

    /* renamed from: c, reason: collision with root package name */
    public int f19564c;

    /* renamed from: d, reason: collision with root package name */
    public final ThreadFactoryC1515c f19565d = new ThreadFactoryC1515c();

    /* renamed from: e, reason: collision with root package name */
    public String f19566e;

    public C1513a(boolean z6) {
        this.f19562a = z6;
    }

    public h build() {
        if (!TextUtils.isEmpty(this.f19566e)) {
            return new h(new ThreadPoolExecutor(this.f19563b, this.f19564c, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new e(this.f19565d, this.f19566e, this.f19562a)));
        }
        throw new IllegalArgumentException("Name must be non-null and non-empty, but given: " + this.f19566e);
    }

    public C1513a setName(String str) {
        this.f19566e = str;
        return this;
    }

    public C1513a setThreadCount(int i2) {
        this.f19563b = i2;
        this.f19564c = i2;
        return this;
    }
}
