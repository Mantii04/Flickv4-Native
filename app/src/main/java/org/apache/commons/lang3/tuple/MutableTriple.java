package org.apache.commons.lang3.tuple;

/* loaded from: classes2.dex */
public class MutableTriple<L, M, R> extends Triple<L, M, R> {
    private static final long serialVersionUID = 1;
    public L left;
    public M middle;
    public R right;

    public MutableTriple() {
    }

    public static <L, M, R> MutableTriple<L, M, R> of(L l7, M m7, R r6) {
        return new MutableTriple<>(l7, m7, r6);
    }

    @Override // org.apache.commons.lang3.tuple.Triple
    public L getLeft() {
        return this.left;
    }

    @Override // org.apache.commons.lang3.tuple.Triple
    public M getMiddle() {
        return this.middle;
    }

    @Override // org.apache.commons.lang3.tuple.Triple
    public R getRight() {
        return this.right;
    }

    public void setLeft(L l7) {
        this.left = l7;
    }

    public void setMiddle(M m7) {
        this.middle = m7;
    }

    public void setRight(R r6) {
        this.right = r6;
    }

    public MutableTriple(L l7, M m7, R r6) {
        this.left = l7;
        this.middle = m7;
        this.right = r6;
    }
}
