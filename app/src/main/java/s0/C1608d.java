package s0;

import java.util.ArrayList;
import java.util.Arrays;

/* renamed from: s0.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1608d extends AbstractC1610f {

    /* renamed from: b, reason: collision with root package name */
    public final long f19909b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f19910c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f19911d;

    public C1608d(int i2, long j7) {
        super(i2);
        this.f19909b = j7;
        this.f19910c = new ArrayList();
        this.f19911d = new ArrayList();
    }

    public void add(C1609e c1609e) {
        this.f19910c.add(c1609e);
    }

    public C1608d getContainerBoxOfType(int i2) {
        ArrayList arrayList = this.f19911d;
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            C1608d c1608d = (C1608d) arrayList.get(i7);
            if (c1608d.f19913a == i2) {
                return c1608d;
            }
        }
        return null;
    }

    public C1609e getLeafBoxOfType(int i2) {
        ArrayList arrayList = this.f19910c;
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            C1609e c1609e = (C1609e) arrayList.get(i7);
            if (c1609e.f19913a == i2) {
                return c1609e;
            }
        }
        return null;
    }

    @Override // s0.AbstractC1610f
    public String toString() {
        return AbstractC1610f.getBoxTypeString(this.f19913a) + " leaves: " + Arrays.toString(this.f19910c.toArray()) + " containers: " + Arrays.toString(this.f19911d.toArray());
    }

    public void add(C1608d c1608d) {
        this.f19911d.add(c1608d);
    }
}
