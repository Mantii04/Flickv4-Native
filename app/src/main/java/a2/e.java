package a2;

import T1.G;
import b2.AbstractC0642b;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.content.ShapeStroke$LineCapType;
import com.airbnb.lottie.model.content.ShapeStroke$LineJoinType;
import java.util.List;

/* loaded from: classes.dex */
public final class e implements InterfaceC0381b {

    /* renamed from: a, reason: collision with root package name */
    public final String f4648a;

    /* renamed from: b, reason: collision with root package name */
    public final GradientType f4649b;

    /* renamed from: c, reason: collision with root package name */
    public final Z1.c f4650c;

    /* renamed from: d, reason: collision with root package name */
    public final Z1.d f4651d;

    /* renamed from: e, reason: collision with root package name */
    public final Z1.f f4652e;

    /* renamed from: f, reason: collision with root package name */
    public final Z1.f f4653f;

    /* renamed from: g, reason: collision with root package name */
    public final Z1.b f4654g;

    /* renamed from: h, reason: collision with root package name */
    public final ShapeStroke$LineCapType f4655h;

    /* renamed from: i, reason: collision with root package name */
    public final ShapeStroke$LineJoinType f4656i;

    /* renamed from: j, reason: collision with root package name */
    public final float f4657j;

    /* renamed from: k, reason: collision with root package name */
    public final List f4658k;

    /* renamed from: l, reason: collision with root package name */
    public final Z1.b f4659l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f4660m;

    public e(String str, GradientType gradientType, Z1.c cVar, Z1.d dVar, Z1.f fVar, Z1.f fVar2, Z1.b bVar, ShapeStroke$LineCapType shapeStroke$LineCapType, ShapeStroke$LineJoinType shapeStroke$LineJoinType, float f3, List<Z1.b> list, Z1.b bVar2, boolean z6) {
        this.f4648a = str;
        this.f4649b = gradientType;
        this.f4650c = cVar;
        this.f4651d = dVar;
        this.f4652e = fVar;
        this.f4653f = fVar2;
        this.f4654g = bVar;
        this.f4655h = shapeStroke$LineCapType;
        this.f4656i = shapeStroke$LineJoinType;
        this.f4657j = f3;
        this.f4658k = list;
        this.f4659l = bVar2;
        this.f4660m = z6;
    }

    public ShapeStroke$LineCapType getCapType() {
        return this.f4655h;
    }

    public Z1.b getDashOffset() {
        return this.f4659l;
    }

    public Z1.f getEndPoint() {
        return this.f4653f;
    }

    public Z1.c getGradientColor() {
        return this.f4650c;
    }

    public GradientType getGradientType() {
        return this.f4649b;
    }

    public ShapeStroke$LineJoinType getJoinType() {
        return this.f4656i;
    }

    public List<Z1.b> getLineDashPattern() {
        return this.f4658k;
    }

    public float getMiterLimit() {
        return this.f4657j;
    }

    public String getName() {
        return this.f4648a;
    }

    public Z1.d getOpacity() {
        return this.f4651d;
    }

    public Z1.f getStartPoint() {
        return this.f4652e;
    }

    public Z1.b getWidth() {
        return this.f4654g;
    }

    public boolean isHidden() {
        return this.f4660m;
    }

    @Override // a2.InterfaceC0381b
    public V1.d toContent(G g7, AbstractC0642b abstractC0642b) {
        return new V1.j(g7, abstractC0642b, this);
    }
}
