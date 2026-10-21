package h2;

import android.content.Context;
import java.io.File;

/* loaded from: classes.dex */
public final class u implements InterfaceC0972g {

    /* renamed from: a, reason: collision with root package name */
    public File f16520a = null;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f16521b;

    public u(Context context) {
        this.f16521b = context;
    }

    public File get() {
        if (this.f16520a == null) {
            this.f16520a = new File(this.f16521b.getCacheDir(), "volley");
        }
        return this.f16520a;
    }
}
