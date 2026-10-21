package W1;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4130a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f4131b;

    /* renamed from: c, reason: collision with root package name */
    public final List f4132c;

    public l(List<a2.f> list) {
        this.f4132c = list;
        this.f4130a = new ArrayList(list.size());
        this.f4131b = new ArrayList(list.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f4130a.add(list.get(i2).getMaskPath().createAnimation());
            this.f4131b.add(list.get(i2).getOpacity().createAnimation());
        }
    }

    public List<f> getMaskAnimations() {
        return this.f4130a;
    }

    public List<a2.f> getMasks() {
        return this.f4132c;
    }

    public List<f> getOpacityAnimations() {
        return this.f4131b;
    }
}
