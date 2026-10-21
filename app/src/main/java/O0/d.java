package O0;

import J0.m;
import J0.p;
import P3.w;
import s0.C1606b;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements w {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2349b;

    @Override // P3.w
    public final boolean apply(Object obj) {
        switch (this.f2349b) {
            case 0:
                return ((p) obj).f1463a.equals("TLEN");
            case 1:
                return ((C1606b) obj).f19904a.equals("auxiliary.tracks.interleaved");
            case 2:
                return ((C1606b) obj).f19904a.equals("auxiliary.tracks.offset");
            case 3:
                return ((C1606b) obj).f19904a.equals("auxiliary.tracks.map");
            case 4:
                return ((J0.e) obj).f1451c.equals("iTunSMPB");
            default:
                m mVar = (m) obj;
                return mVar.f1465b.equals("com.apple.iTunes") && mVar.f1466c.equals("iTunSMPB");
        }
    }
}
