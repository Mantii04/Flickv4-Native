package org.apache.commons.lang3.tuple;

/* loaded from: classes2.dex */
public final class ImmutableTriple<L, M, R> extends Triple<L, M, R> {
    private static final ImmutableTriple NULL = of((Object) null, (Object) null, (Object) null);
    private static final long serialVersionUID = 1;
    public final L left;
    public final M middle;
    public final R right;

    public ImmutableTriple(L l7, M m7, R r6) {
        this.left = l7;
        this.middle = m7;
        this.right = r6;
    }

    public static <L, M, R> ImmutableTriple<L, M, R> nullTriple() {
        return NULL;
    }

    public static <L, M, R> ImmutableTriple<L, M, R> of(L l7, M m7, R r6) {
        return new ImmutableTriple<>(l7, m7, r6);
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
}
