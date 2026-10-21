package P5;

import java.util.regex.MatchResult;
import v5.AbstractC1769e;

/* loaded from: classes2.dex */
public final class h extends AbstractC1769e {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ i f2740e;

    public h(i iVar) {
        this.f2740e = iVar;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof String) {
            return contains((String) obj);
        }
        return false;
    }

    @Override // kotlin.collections.AbstractCollection
    public int getSize() {
        MatchResult matchResult;
        matchResult = this.f2740e.f2741a;
        return matchResult.groupCount() + 1;
    }

    @Override // v5.AbstractC1769e, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof String) {
            return indexOf((String) obj);
        }
        return -1;
    }

    @Override // v5.AbstractC1769e, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof String) {
            return lastIndexOf((String) obj);
        }
        return -1;
    }

    public /* bridge */ boolean contains(String str) {
        return super.contains((Object) str);
    }

    @Override // v5.AbstractC1769e, java.util.List
    public String get(int i2) {
        MatchResult matchResult;
        matchResult = this.f2740e.f2741a;
        String group = matchResult.group(i2);
        return group == null ? "" : group;
    }

    public /* bridge */ int indexOf(String str) {
        return super.indexOf((Object) str);
    }

    public /* bridge */ int lastIndexOf(String str) {
        return super.lastIndexOf((Object) str);
    }
}
