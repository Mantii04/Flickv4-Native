package kotlin.text;

import M5.e;
import M5.g;
import O5.l;
import P5.f;
import P5.i;
import java.util.Iterator;
import java.util.regex.MatchResult;
import kotlin.collections.AbstractCollection;
import kotlin.jvm.internal.j;
import v5.p;
import v5.u;

/* loaded from: classes2.dex */
public final class MatcherMatchResult$groups$1 extends AbstractCollection {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f17459b;

    public MatcherMatchResult$groups$1(i iVar) {
        this.f17459b = iVar;
    }

    public /* bridge */ boolean contains(f fVar) {
        return super.contains((Object) fVar);
    }

    public f get(int i2) {
        MatchResult matchResult;
        e until;
        MatchResult matchResult2;
        i iVar = this.f17459b;
        matchResult = iVar.f2741a;
        until = g.until(matchResult.start(i2), matchResult.end(i2));
        if (until.getStart().intValue() < 0) {
            return null;
        }
        matchResult2 = iVar.f2741a;
        String group = matchResult2.group(i2);
        j.checkNotNullExpressionValue(group, "group(...)");
        return new f(group, until);
    }

    @Override // kotlin.collections.AbstractCollection
    public int getSize() {
        MatchResult matchResult;
        matchResult = this.f17459b.f2741a;
        return matchResult.groupCount() + 1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<f> iterator() {
        return l.map(u.asSequence(p.getIndices(this)), new H5.l() { // from class: kotlin.text.MatcherMatchResult$groups$1$iterator$1
            {
                super(1);
            }

            public final f invoke(int i2) {
                return MatcherMatchResult$groups$1.this.get(i2);
            }

            @Override // H5.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke(((Number) obj).intValue());
            }
        }).iterator();
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj == null ? true : obj instanceof f) {
            return contains((f) obj);
        }
        return false;
    }
}
