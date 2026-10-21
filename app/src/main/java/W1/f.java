package W1;

import T1.AbstractC0324c;
import g2.C0947a;
import g2.C0949c;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: c, reason: collision with root package name */
    public final c f4123c;

    /* renamed from: e, reason: collision with root package name */
    public C0949c f4125e;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4121a = new ArrayList(1);

    /* renamed from: b, reason: collision with root package name */
    public boolean f4122b = false;

    /* renamed from: d, reason: collision with root package name */
    public float f4124d = 0.0f;

    /* renamed from: f, reason: collision with root package name */
    public Object f4126f = null;

    /* renamed from: g, reason: collision with root package name */
    public float f4127g = -1.0f;

    /* renamed from: h, reason: collision with root package name */
    public float f4128h = -1.0f;

    public f(List list) {
        c eVar;
        if (list.isEmpty()) {
            eVar = new b();
        } else {
            eVar = list.size() == 1 ? new e(list) : new d(list);
        }
        this.f4123c = eVar;
    }

    public float a() {
        if (this.f4128h == -1.0f) {
            this.f4128h = this.f4123c.getEndProgress();
        }
        return this.f4128h;
    }

    public void addUpdateListener(a aVar) {
        this.f4121a.add(aVar);
    }

    public final float b() {
        if (this.f4122b) {
            return 0.0f;
        }
        C0947a currentKeyframe = getCurrentKeyframe();
        if (currentKeyframe.isStatic()) {
            return 0.0f;
        }
        return (this.f4124d - currentKeyframe.getStartProgress()) / (currentKeyframe.getEndProgress() - currentKeyframe.getStartProgress());
    }

    public C0947a getCurrentKeyframe() {
        AbstractC0324c.beginSection("BaseKeyframeAnimation#getCurrentKeyframe");
        C0947a currentKeyframe = this.f4123c.getCurrentKeyframe();
        AbstractC0324c.endSection("BaseKeyframeAnimation#getCurrentKeyframe");
        return currentKeyframe;
    }

    public float getInterpolatedCurrentKeyframeProgress() {
        C0947a currentKeyframe = getCurrentKeyframe();
        if (currentKeyframe.isStatic()) {
            return 0.0f;
        }
        return currentKeyframe.f16443d.getInterpolation(b());
    }

    public float getProgress() {
        return this.f4124d;
    }

    public Object getValue() {
        float interpolatedCurrentKeyframeProgress = getInterpolatedCurrentKeyframeProgress();
        if (this.f4125e == null && this.f4123c.isCachedValueEnabled(interpolatedCurrentKeyframeProgress)) {
            return this.f4126f;
        }
        Object value = getValue(getCurrentKeyframe(), interpolatedCurrentKeyframeProgress);
        this.f4126f = value;
        return value;
    }

    public abstract Object getValue(C0947a c0947a, float f3);

    public void notifyListeners() {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f4121a;
            if (i2 >= arrayList.size()) {
                return;
            }
            ((a) arrayList.get(i2)).onValueChanged();
            i2++;
        }
    }

    public void setIsDiscrete() {
        this.f4122b = true;
    }

    public void setProgress(float f3) {
        c cVar = this.f4123c;
        if (cVar.isEmpty()) {
            return;
        }
        if (this.f4127g == -1.0f) {
            this.f4127g = cVar.getStartDelayProgress();
        }
        float f7 = this.f4127g;
        if (f3 < f7) {
            if (f7 == -1.0f) {
                this.f4127g = cVar.getStartDelayProgress();
            }
            f3 = this.f4127g;
        } else if (f3 > a()) {
            f3 = a();
        }
        if (f3 == this.f4124d) {
            return;
        }
        this.f4124d = f3;
        if (cVar.isValueChanged(f3)) {
            notifyListeners();
        }
    }

    public void setValueCallback(C0949c c0949c) {
        C0949c c0949c2 = this.f4125e;
        if (c0949c2 != null) {
            c0949c2.setAnimation(null);
        }
        this.f4125e = c0949c;
        if (c0949c != null) {
            c0949c.setAnimation(this);
        }
    }
}
