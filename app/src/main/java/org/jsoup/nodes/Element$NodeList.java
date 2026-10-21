package org.jsoup.nodes;

import j6.p;
import org.jsoup.helper.ChangeNotifyingArrayList;

/* loaded from: classes2.dex */
final class Element$NodeList extends ChangeNotifyingArrayList<p> {

    /* renamed from: b, reason: collision with root package name */
    public final b f19189b;

    public Element$NodeList(b bVar, int i2) {
        super(i2);
        this.f19189b = bVar;
    }

    @Override // org.jsoup.helper.ChangeNotifyingArrayList
    public void onContentsChanged() {
        this.f19189b.f19211j = null;
    }
}
