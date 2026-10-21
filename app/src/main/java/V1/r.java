package V1;

import T1.G;
import android.graphics.Path;
import b2.AbstractC0642b;
import com.airbnb.lottie.model.content.ShapeTrimPath$Type;
import java.util.List;

/* loaded from: classes.dex */
public final class r implements n, W1.a {

    /* renamed from: b, reason: collision with root package name */
    public final boolean f3935b;

    /* renamed from: c, reason: collision with root package name */
    public final G f3936c;

    /* renamed from: d, reason: collision with root package name */
    public final W1.f f3937d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f3938e;

    /* renamed from: a, reason: collision with root package name */
    public final Path f3934a = new Path();

    /* renamed from: f, reason: collision with root package name */
    public final c f3939f = new c();

    public r(G g7, AbstractC0642b abstractC0642b, a2.n nVar) {
        nVar.getName();
        this.f3935b = nVar.isHidden();
        this.f3936c = g7;
        W1.f createAnimation = nVar.getShapePath().createAnimation();
        this.f3937d = createAnimation;
        abstractC0642b.addAnimation(createAnimation);
        createAnimation.addUpdateListener(this);
    }

    @Override // V1.n
    public Path getPath() {
        boolean z6 = this.f3938e;
        Path path = this.f3934a;
        if (z6) {
            return path;
        }
        path.reset();
        if (this.f3935b) {
            this.f3938e = true;
            return path;
        }
        path.set((Path) this.f3937d.getValue());
        path.setFillType(Path.FillType.EVEN_ODD);
        this.f3939f.apply(path);
        this.f3938e = true;
        return path;
    }

    @Override // W1.a
    public void onValueChanged() {
        this.f3938e = false;
        this.f3936c.invalidateSelf();
    }

    @Override // V1.d
    public void setContents(List<d> list, List<d> list2) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            d dVar = list.get(i2);
            if (dVar instanceof t) {
                t tVar = (t) dVar;
                if (tVar.f3947c == ShapeTrimPath$Type.f9048b) {
                    this.f3939f.f3836a.add(tVar);
                    tVar.a(this);
                }
            }
        }
    }
}
