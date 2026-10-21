package V1;

import b2.AbstractC0642b;
import com.airbnb.lottie.model.content.ShapeTrimPath$Type;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class t implements d, W1.a {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f3945a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f3946b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ShapeTrimPath$Type f3947c;

    /* renamed from: d, reason: collision with root package name */
    public final W1.f f3948d;

    /* renamed from: e, reason: collision with root package name */
    public final W1.f f3949e;

    /* renamed from: f, reason: collision with root package name */
    public final W1.f f3950f;

    public t(AbstractC0642b abstractC0642b, a2.p pVar) {
        pVar.getName();
        this.f3945a = pVar.isHidden();
        this.f3947c = pVar.getType();
        W1.f createAnimation = pVar.getStart().createAnimation();
        this.f3948d = createAnimation;
        W1.f createAnimation2 = pVar.getEnd().createAnimation();
        this.f3949e = createAnimation2;
        W1.f createAnimation3 = pVar.getOffset().createAnimation();
        this.f3950f = createAnimation3;
        abstractC0642b.addAnimation(createAnimation);
        abstractC0642b.addAnimation(createAnimation2);
        abstractC0642b.addAnimation(createAnimation3);
        createAnimation.addUpdateListener(this);
        createAnimation2.addUpdateListener(this);
        createAnimation3.addUpdateListener(this);
    }

    public final void a(W1.a aVar) {
        this.f3946b.add(aVar);
    }

    public W1.f getEnd() {
        return this.f3949e;
    }

    public W1.f getOffset() {
        return this.f3950f;
    }

    public W1.f getStart() {
        return this.f3948d;
    }

    public boolean isHidden() {
        return this.f3945a;
    }

    @Override // W1.a
    public void onValueChanged() {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f3946b;
            if (i2 >= arrayList.size()) {
                return;
            }
            ((W1.a) arrayList.get(i2)).onValueChanged();
            i2++;
        }
    }

    @Override // V1.d
    public void setContents(List<d> list, List<d> list2) {
    }
}
