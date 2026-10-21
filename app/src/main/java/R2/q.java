package R2;

import com.google.android.datatransport.cct.internal.QosTier;
import java.util.List;

/* loaded from: classes.dex */
public final class q extends A {

    /* renamed from: a, reason: collision with root package name */
    public Long f3094a;

    /* renamed from: b, reason: collision with root package name */
    public Long f3095b;

    /* renamed from: c, reason: collision with root package name */
    public x f3096c;

    /* renamed from: d, reason: collision with root package name */
    public Integer f3097d;

    /* renamed from: e, reason: collision with root package name */
    public String f3098e;

    /* renamed from: f, reason: collision with root package name */
    public List f3099f;

    /* renamed from: g, reason: collision with root package name */
    public QosTier f3100g;

    @Override // R2.A
    public B build() {
        String str = this.f3094a == null ? " requestTimeMs" : "";
        if (this.f3095b == null) {
            str = str.concat(" requestUptimeMs");
        }
        if (str.isEmpty()) {
            return new r(this.f3094a.longValue(), this.f3095b.longValue(), this.f3096c, this.f3097d, this.f3098e, this.f3099f, this.f3100g);
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    @Override // R2.A
    public A setClientInfo(x xVar) {
        this.f3096c = xVar;
        return this;
    }

    @Override // R2.A
    public A setLogEvents(List<z> list) {
        this.f3099f = list;
        return this;
    }

    @Override // R2.A
    public A setQosTier(QosTier qosTier) {
        this.f3100g = qosTier;
        return this;
    }

    @Override // R2.A
    public A setRequestTimeMs(long j7) {
        this.f3094a = Long.valueOf(j7);
        return this;
    }

    @Override // R2.A
    public A setRequestUptimeMs(long j7) {
        this.f3095b = Long.valueOf(j7);
        return this;
    }
}
