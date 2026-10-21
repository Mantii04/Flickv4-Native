package m1;

import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class I0 {

    /* renamed from: a, reason: collision with root package name */
    public int f18287a;

    /* renamed from: b, reason: collision with root package name */
    public int f18288b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18289c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18290d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f18291e;

    /* renamed from: f, reason: collision with root package name */
    public int[] f18292f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f18293g;

    public I0(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f18293g = staggeredGridLayoutManager;
        a();
    }

    public final void a() {
        this.f18287a = -1;
        this.f18288b = Integer.MIN_VALUE;
        this.f18289c = false;
        this.f18290d = false;
        this.f18291e = false;
        int[] iArr = this.f18292f;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }
}
