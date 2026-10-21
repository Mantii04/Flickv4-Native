package Q3;

/* loaded from: classes2.dex */
public abstract class g0 {
    public boolean equals(Object obj) {
        if (obj instanceof g0) {
            i0 i0Var = (i0) this;
            i0 i0Var2 = (i0) ((g0) obj);
            if (i0Var.getCount() == i0Var2.getCount() && P3.u.equal(i0Var.getElement(), i0Var2.getElement())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        i0 i0Var = (i0) this;
        Object element = i0Var.getElement();
        return i0Var.getCount() ^ (element == null ? 0 : element.hashCode());
    }

    public String toString() {
        i0 i0Var = (i0) this;
        String valueOf = String.valueOf(i0Var.getElement());
        int count = i0Var.getCount();
        if (count == 1) {
            return valueOf;
        }
        return valueOf + " x " + count;
    }
}
