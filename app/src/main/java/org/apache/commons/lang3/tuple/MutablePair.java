package org.apache.commons.lang3.tuple;

/* loaded from: classes2.dex */
public class MutablePair<L, R> extends Pair<L, R> {
    private static final long serialVersionUID = 4954918890077093841L;
    public L left;
    public R right;

    public MutablePair() {
    }

    public static <L, R> MutablePair<L, R> of(L l7, R r6) {
        return new MutablePair<>(l7, r6);
    }

    @Override // org.apache.commons.lang3.tuple.Pair
    public L getLeft() {
        return this.left;
    }

    @Override // org.apache.commons.lang3.tuple.Pair
    public R getRight() {
        return this.right;
    }

    public void setLeft(L l7) {
        this.left = l7;
    }

    public void setRight(R r6) {
        this.right = r6;
    }

    @Override // java.util.Map.Entry
    public R setValue(R r6) {
        R right = getRight();
        setRight(r6);
        return right;
    }

    public MutablePair(L l7, R r6) {
        this.left = l7;
        this.right = r6;
    }
}
