package a2;

import T1.G;
import android.graphics.Path;
import b2.AbstractC0642b;
import com.airbnb.lottie.model.content.GradientType;

/* loaded from: classes.dex */
public final class d implements InterfaceC0381b {

    /* renamed from: a, reason: collision with root package name */
    public final GradientType f4640a;

    /* renamed from: b, reason: collision with root package name */
    public final Path.FillType f4641b;

    /* renamed from: c, reason: collision with root package name */
    public final Z1.c f4642c;

    /* renamed from: d, reason: collision with root package name */
    public final Z1.d f4643d;

    /* renamed from: e, reason: collision with root package name */
    public final Z1.f f4644e;

    /* renamed from: f, reason: collision with root package name */
    public final Z1.f f4645f;

    /* renamed from: g, reason: collision with root package name */
    public final String f4646g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f4647h;

    public d(String str, GradientType gradientType, Path.FillType fillType, Z1.c cVar, Z1.d dVar, Z1.f fVar, Z1.f fVar2, Z1.b bVar, Z1.b bVar2, boolean z6) {
        this.f4640a = gradientType;
        this.f4641b = fillType;
        this.f4642c = cVar;
        this.f4643d = dVar;
        this.f4644e = fVar;
        this.f4645f = fVar2;
        this.f4646g = str;
        this.f4647h = z6;
    }

    public Z1.f getEndPoint() {
        return this.f4645f;
    }

    public Path.FillType getFillType() {
        return this.f4641b;
    }

    public Z1.c getGradientColor() {
        return this.f4642c;
    }

    public GradientType getGradientType() {
        return this.f4640a;
    }

    public String getName() {
        return this.f4646g;
    }

    public Z1.d getOpacity() {
        return this.f4643d;
    }

    public Z1.f getStartPoint() {
        return this.f4644e;
    }

    public boolean isHidden() {
        return this.f4647h;
    }

    @Override // a2.InterfaceC0381b
    public V1.d toContent(G g7, AbstractC0642b abstractC0642b) {
        return new V1.i(g7, abstractC0642b, this);
    }
}
