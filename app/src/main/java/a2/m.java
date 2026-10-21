package a2;

import T1.G;
import b2.AbstractC0642b;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class m implements InterfaceC0381b {

    /* renamed from: a, reason: collision with root package name */
    public final String f4697a;

    /* renamed from: b, reason: collision with root package name */
    public final List f4698b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4699c;

    public m(String str, List<InterfaceC0381b> list, boolean z6) {
        this.f4697a = str;
        this.f4698b = list;
        this.f4699c = z6;
    }

    public List<InterfaceC0381b> getItems() {
        return this.f4698b;
    }

    public String getName() {
        return this.f4697a;
    }

    public boolean isHidden() {
        return this.f4699c;
    }

    @Override // a2.InterfaceC0381b
    public V1.d toContent(G g7, AbstractC0642b abstractC0642b) {
        return new V1.e(g7, abstractC0642b, this);
    }

    public String toString() {
        return "ShapeGroup{name='" + this.f4697a + "' Shapes: " + Arrays.toString(this.f4698b.toArray()) + '}';
    }
}
