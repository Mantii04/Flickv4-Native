package W1;

import android.graphics.PointF;
import g2.C0947a;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final class r extends f {

    /* renamed from: i, reason: collision with root package name */
    public final PointF f4143i;

    /* renamed from: j, reason: collision with root package name */
    public final f f4144j;

    /* renamed from: k, reason: collision with root package name */
    public final f f4145k;

    public r(f fVar, f fVar2) {
        super(Collections.EMPTY_LIST);
        this.f4143i = new PointF();
        this.f4144j = fVar;
        this.f4145k = fVar2;
        setProgress(getProgress());
    }

    @Override // W1.f
    public void setProgress(float f3) {
        f fVar = this.f4144j;
        fVar.setProgress(f3);
        f fVar2 = this.f4145k;
        fVar2.setProgress(f3);
        this.f4143i.set(((Float) fVar.getValue()).floatValue(), ((Float) fVar2.getValue()).floatValue());
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

    @Override // W1.f
    public PointF getValue() {
        return this.f4143i;
    }

    @Override // W1.f
    public final Object getValue(C0947a c0947a, float f3) {
        return this.f4143i;
    }
}
