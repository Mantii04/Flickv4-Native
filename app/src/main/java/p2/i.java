package p2;

import android.content.Context;
import java.io.File;

/* loaded from: classes.dex */
public final class i implements InterfaceC1495f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f19460a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f19461b;

    public i(Context context, String str) {
        this.f19460a = context;
        this.f19461b = str;
    }

    public File getCacheDirectory() {
        File cacheDir = this.f19460a.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = this.f19461b;
        return str != null ? new File(cacheDir, str) : cacheDir;
    }
}
