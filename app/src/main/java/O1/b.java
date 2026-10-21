package O1;

import A.i;
import B1.t;
import K1.C0119j;
import K1.C0125p;
import K1.C0130v;
import K1.E;
import K1.InterfaceC0121l;
import K1.InterfaceC0128t;
import K1.V;
import K1.Y;
import K1.b0;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.j;
import org.apache.commons.lang3.StringUtils;
import v5.u;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final String f2400a;

    static {
        String tagWithPrefix = t.tagWithPrefix("DiagnosticsWrkr");
        j.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"DiagnosticsWrkr\")");
        f2400a = tagWithPrefix;
    }

    public static final String access$workSpecRows(InterfaceC0128t interfaceC0128t, Y y6, InterfaceC0121l interfaceC0121l, List list) {
        StringBuilder sb = new StringBuilder("\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            E e3 = (E) it.next();
            C0119j systemIdInfo = ((C0125p) interfaceC0121l).getSystemIdInfo(V.generationalId(e3));
            Integer valueOf = systemIdInfo != null ? Integer.valueOf(systemIdInfo.f1641c) : null;
            String joinToString$default = u.joinToString$default(((C0130v) interfaceC0128t).getNamesForWorkSpecId(e3.f1594a), ",", null, null, 0, null, null, 62, null);
            String str = e3.f1594a;
            String joinToString$default2 = u.joinToString$default(((b0) y6).getTagsForWorkSpecId(str), ",", null, null, 0, null, null, 62, null);
            StringBuilder t6 = i.t(StringUtils.LF, str, "\t ");
            t6.append(e3.f1596c);
            t6.append("\t ");
            t6.append(valueOf);
            t6.append("\t ");
            t6.append(e3.f1595b.name());
            t6.append("\t ");
            t6.append(joinToString$default);
            t6.append("\t ");
            t6.append(joinToString$default2);
            t6.append('\t');
            sb.append(t6.toString());
        }
        String sb2 = sb.toString();
        j.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
