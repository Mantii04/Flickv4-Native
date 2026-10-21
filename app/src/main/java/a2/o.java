package a2;

import T1.G;
import V1.s;
import b2.AbstractC0642b;
import com.airbnb.lottie.model.content.ShapeStroke$LineCapType;
import com.airbnb.lottie.model.content.ShapeStroke$LineJoinType;
import java.util.List;

/* loaded from: classes.dex */
public final class o implements InterfaceC0381b {

    /* renamed from: a, reason: collision with root package name */
    public final String f4704a;

    /* renamed from: b, reason: collision with root package name */
    public final Z1.b f4705b;

    /* renamed from: c, reason: collision with root package name */
    public final List f4706c;

    /* renamed from: d, reason: collision with root package name */
    public final Z1.a f4707d;

    /* renamed from: e, reason: collision with root package name */
    public final Z1.d f4708e;

    /* renamed from: f, reason: collision with root package name */
    public final Z1.b f4709f;

    /* renamed from: g, reason: collision with root package name */
    public final ShapeStroke$LineCapType f4710g;

    /* renamed from: h, reason: collision with root package name */
    public final ShapeStroke$LineJoinType f4711h;

    /* renamed from: i, reason: collision with root package name */
    public final float f4712i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f4713j;

    public o(String str, Z1.b bVar, List<Z1.b> list, Z1.a aVar, Z1.d dVar, Z1.b bVar2, ShapeStroke$LineCapType shapeStroke$LineCapType, ShapeStroke$LineJoinType shapeStroke$LineJoinType, float f3, boolean z6) {
        this.f4704a = str;
        this.f4705b = bVar;
        this.f4706c = list;
        this.f4707d = aVar;
        this.f4708e = dVar;
        this.f4709f = bVar2;
        this.f4710g = shapeStroke$LineCapType;
        this.f4711h = shapeStroke$LineJoinType;
        this.f4712i = f3;
        this.f4713j = z6;
    }

    public ShapeStroke$LineCapType getCapType() {
        return this.f4710g;
    }

    public Z1.a getColor() {
        return this.f4707d;
    }

    public Z1.b getDashOffset() {
        return this.f4705b;
    }

    public ShapeStroke$LineJoinType getJoinType() {
        return this.f4711h;
    }

    public List<Z1.b> getLineDashPattern() {
        return this.f4706c;
    }

    public float getMiterLimit() {
        return this.f4712i;
    }

    public String getName() {
        return this.f4704a;
    }

    public Z1.d getOpacity() {
        return this.f4708e;
    }

    public Z1.b getWidth() {
        return this.f4709f;
    }

    public boolean isHidden() {
        return this.f4713j;
    }

    @Override // a2.InterfaceC0381b
    public V1.d toContent(G g7, AbstractC0642b abstractC0642b) {
        return new s(g7, abstractC0642b, this);
    }
}
