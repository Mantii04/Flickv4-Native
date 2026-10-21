package com.google.common.collect;

import java.util.List;
import java.util.ListIterator;

/* loaded from: classes2.dex */
public final class n extends l implements ListIterator {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ o f13157j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(o oVar) {
        super(oVar);
        this.f13157j = oVar;
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        o oVar = this.f13157j;
        boolean isEmpty = oVar.isEmpty();
        b().add(obj);
        oVar.f13158n.f13037n++;
        if (isEmpty) {
            oVar.a();
        }
    }

    public final ListIterator b() {
        a();
        return (ListIterator) this.f13149b;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return b().hasPrevious();
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return b().nextIndex();
    }

    @Override // java.util.ListIterator
    public Object previous() {
        return b().previous();
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return b().previousIndex();
    }

    @Override // java.util.ListIterator
    public void set(Object obj) {
        b().set(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(o oVar, int i2) {
        super(oVar, ((List) oVar.f13153e).listIterator(i2));
        this.f13157j = oVar;
    }
}
