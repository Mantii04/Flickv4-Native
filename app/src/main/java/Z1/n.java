package Z1;

import g2.C0947a;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public abstract class n implements m {

    /* renamed from: a, reason: collision with root package name */
    public final List f4465a;

    public n(List list) {
        this.f4465a = list;
    }

    @Override // Z1.m
    public List<C0947a> getKeyframes() {
        return this.f4465a;
    }

    @Override // Z1.m
    public boolean isStatic() {
        List list = this.f4465a;
        return list.isEmpty() || (list.size() == 1 && ((C0947a) list.get(0)).isStatic());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        List list = this.f4465a;
        if (!list.isEmpty()) {
            sb.append("values=");
            sb.append(Arrays.toString(list.toArray()));
        }
        return sb.toString();
    }
}
