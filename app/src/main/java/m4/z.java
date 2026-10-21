package m4;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public final Context f18723a;

    /* renamed from: b, reason: collision with root package name */
    public InterfaceC1338q f18724b;

    /* renamed from: c, reason: collision with root package name */
    public G f18725c;

    /* renamed from: d, reason: collision with root package name */
    public C1342v f18726d;

    /* renamed from: e, reason: collision with root package name */
    public C1321C f18727e;

    /* renamed from: f, reason: collision with root package name */
    public Bitmap.Config f18728f;

    public z(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null.");
        }
        this.f18723a = context.getApplicationContext();
    }

    public D build() {
        InterfaceC1338q interfaceC1338q = this.f18724b;
        Context context = this.f18723a;
        if (interfaceC1338q == null) {
            this.f18724b = new x(context);
        }
        if (this.f18726d == null) {
            this.f18726d = new C1342v(context);
        }
        if (this.f18725c == null) {
            this.f18725c = new G(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new V());
        }
        if (this.f18727e == null) {
            this.f18727e = C1321C.f18591a;
        }
        P p6 = new P(this.f18726d);
        return new D(context, new C1337p(context, this.f18725c, D.f18592k, this.f18724b, this.f18726d, p6), this.f18726d, this.f18727e, p6, this.f18728f);
    }

    public z defaultBitmapConfig(Bitmap.Config config) {
        if (config == null) {
            throw new IllegalArgumentException("Bitmap config must not be null.");
        }
        this.f18728f = config;
        return this;
    }

    public z downloader(InterfaceC1338q interfaceC1338q) {
        if (interfaceC1338q == null) {
            throw new IllegalArgumentException("Downloader must not be null.");
        }
        if (this.f18724b != null) {
            throw new IllegalStateException("Downloader already set.");
        }
        this.f18724b = interfaceC1338q;
        return this;
    }
}
