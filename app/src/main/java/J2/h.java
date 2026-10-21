package J2;

import java.io.File;
import java.io.FilenameFilter;

/* loaded from: classes.dex */
public final class h implements FilenameFilter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1506a;

    public h(String str) {
        this.f1506a = str;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return str.startsWith(this.f1506a);
    }
}
