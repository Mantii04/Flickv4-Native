package a2;

import T1.G;
import android.graphics.Path;
import b2.AbstractC0642b;

/* loaded from: classes.dex */
public final class l implements InterfaceC0381b {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4691a;

    /* renamed from: b, reason: collision with root package name */
    public final Path.FillType f4692b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4693c;

    /* renamed from: d, reason: collision with root package name */
    public final Z1.a f4694d;

    /* renamed from: e, reason: collision with root package name */
    public final Z1.d f4695e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f4696f;

    public l(String str, boolean z6, Path.FillType fillType, Z1.a aVar, Z1.d dVar, boolean z7) {
        this.f4693c = str;
        this.f4691a = z6;
        this.f4692b = fillType;
        this.f4694d = aVar;
        this.f4695e = dVar;
        this.f4696f = z7;
    }

    public Z1.a getColor() {
        return this.f4694d;
    }

    public Path.FillType getFillType() {
        return this.f4692b;
    }

    public String getName() {
        return this.f4693c;
    }

    public Z1.d getOpacity() {
        return this.f4695e;
    }

    public boolean isHidden() {
        return this.f4696f;
    }

    @Override // a2.InterfaceC0381b
    public V1.d toContent(G g7, AbstractC0642b abstractC0642b) {
        return new V1.h(g7, abstractC0642b, this);
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.f4691a + '}';
    }
}
